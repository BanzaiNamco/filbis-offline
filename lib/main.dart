import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:isar/isar.dart';

import 'collections.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();  
}

class _MainAppState extends State<MainApp> {
  var _loadedData = {};
  var answers = {};
  late Isar isar;

  Future<Isar> initIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [ModuleSchema],
      directory: dir.path
    );
  }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/files/sample.json');
    final data = await json.decode(response);
    setState(() {
      _loadedData = data["q1"];
    });
}

  @override
  void initState() {
    super.initState();
    readJson();
    initIsar().then((value) => isar = value);
    // check if the data is already in the database
    // final count = await isar.modules.count();
    // if (count == 0){
      
    // }
  }

  @override
  Widget build(BuildContext context) {
    if (_loadedData.isEmpty) {
      return const CircularProgressIndicator(); // Show a loading indicator while data is being fetched
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFF408B51),
            appBar: AppBar(
            title: const Text(
              'FilBis: Your Ultimate Health Chatbot!',
              style: TextStyle(
              color: Colors.black, 
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
              onPressed: () {
                print("clicked");
                try {
                  var url = Uri.http('10.0.2.2:8000', '/mobile_download_modules');
                  http.post(url, body: {}).then((response) async {
                    var data = json.decode(response.body);
                    // for each module in the data, add it to the database
                    for (var key in data.keys) {
                      final mod = Module()..name = key;
                      await isar.writeTxn(() async {
                        await isar.modules.put(mod);
                      });
                      final subModules = data[key];
                      for (var subKey in subModules.keys){
                        // for each submodule, set the qckreply and stuff
                        final subMod = sub_module()..name = subKey;
                        final qckReply = qck_reply();
                        final questionTranslation = question_translation();

                        // set the qckReply
                        if (subModules[subKey]["qck_reply"] != null){
                          qckReply.english_replies = subModules[subKey]["qck_reply"]["english_replies"].cast<String>();
                          qckReply.cebuano_replies = subModules[subKey]["qck_reply"]["cebuano_replies"].cast<String>();
                          qckReply.tagalog_replies = subModules[subKey]["qck_reply"]["tagalog_replies"].cast<String>();
                        }
                        // set the questionTranslation
                        if (subModules[subKey]["question_translation"] != null){
                          questionTranslation.english_response = subModules[subKey]["question_translation"]["english_response"];
                          questionTranslation.cebuano_response = subModules[subKey]["question_translation"]["cebuano_response"];
                          questionTranslation.tagalog_response = subModules[subKey]["question_translation"]["tagalog_response"];
                        }
                        // set the subModule
                        subMod.qckReply = qckReply;
                        subMod.questionTranslation = questionTranslation;
                        // add the subModule to the module's embedded list
                        await isar.writeTxn(() async {
                          await isar.modules.put(mod..subModule.add(subMod));
                        });
                      }
                    }
                  });
                } catch (e) {
                  print(e);
                }
              },
              icon: Icon(Icons.add),
              ),
            ],
            ),
          body: Center(
            child: Container(
              child: Column(
                children: [
                  Text(
                    _loadedData["question"],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ..._loadedData["choices"].map<Widget>((choice) {
                    return ElevatedButton(
                      onPressed: () {},
                      child: Text(choice),
                    );
                  }).toList(),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
