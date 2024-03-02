// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BeltContent {
  final Map<String, String> meaning;
  final String form;
  final List<String> diruguiList;
  final List<String> tchaguiList;
  final List<String> makiList;
  final List<String> saguiList;

  BeltContent({
    required this.meaning,
    required this.form,
    required this.diruguiList,
    required this.tchaguiList,
    required this.makiList,
    required this.saguiList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meaning': meaning,
      'taegukOrPoomseName': form,
      'diruguiList': diruguiList,
      'tchaguiList': tchaguiList,
      'makiList': makiList,
      'saguiList': saguiList,
    };
  }

  factory BeltContent.fromMap(Map<String, dynamic> map) {
    return BeltContent(
      meaning:
          Map<String, String>.from((map['meaning'] as Map<String, String>)),
      form: map['taegukOrPoomseName'] as String,
      diruguiList: List<String>.from((map['diruguiList'] as List<String>)),
      tchaguiList: List<String>.from((map['tchaguiList'] as List<String>)),
      makiList: List<String>.from((map['makiList'] as List<String>)),
      saguiList: List<String>.from((map['saguiList'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory BeltContent.fromJson(String source) =>
      BeltContent.fromMap(json.decode(source) as Map<String, dynamic>);
}
