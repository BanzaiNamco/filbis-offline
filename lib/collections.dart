import 'package:isar/isar.dart';

part 'collections.g.dart';

@collection
class Module {
  Id id = Isar.autoIncrement;
  late String name;
  List<sub_module> subModule = List.empty(growable: true);
}

@embedded
class sub_module {
  // final qckReply = IsarLink<qck_reply>();
  qck_reply? qckReply;
  question_translation? questionTranslation;
  late String name;
}

@embedded
class qck_reply {
  // int id = Isar.autoIncrement;
  List<String>? cebuano_replies;
  List<String>? english_replies;
  List<String>? tagalog_replies;
}

@embedded
class question_translation {
  String? cebuano_response;
  String? english_response;
  String? tagalog_response;
}