import 'package:isar/isar.dart';

@Collection()
class module {
  int id = Isar.autoIncrement;
  String name = "";
  List<sub_module>? sub_modules;
}

@Collection()
class sub_module {
  int id = Isar.autoIncrement;
  qck_reply? qckReply;
  question_translation? questionTranslation;
  String name = "";
}

@Collection()
class qck_reply {
  int id = Isar.autoIncrement;
  List<String>? cebuano_replies;
  List<String>? english_replies;
  List<String>? tagalog_replies;
}

@Collection()
class question_translation {
  int id = Isar.autoIncrement;
  String? cebuano_response;
  String? english_response;
  String? tagalog_response;
}