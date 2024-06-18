import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

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
