import 'package:isar/isar.dart';

@Collection()
class mental_health_module {
  int id = Isar.autoIncrement;
  confirm_bothered? confirmBothered;
}

@Collection()
class confirm_bothered {
  int id = Isar.autoIncrement;
  qck_reply? qckReply;
  question_translation? questionTranslation;
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