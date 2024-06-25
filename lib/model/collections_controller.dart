import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/collections.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class FilbisDatabase extends ChangeNotifier {
  static late Isar isar;
  var _loadedData = {};

  // Initializes IsarDB
  static Future<Isar> initIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [ModuleSchema],
      directory: dir.path
    );
  }

  // Initialize the data from web server to the isar database
  static initDb() async {
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
    }
}


