// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BeltContent {
  final Map<String, String> meaning;
  final String taegukOrPoomseName;
  final List<String> diruguiList;
  final List<String> tchaguiList;
  final List<String> makiList;

  BeltContent({
    required this.meaning,
    required this.taegukOrPoomseName,
    required this.diruguiList,
    required this.tchaguiList,
    required this.makiList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meaning': meaning,
      'taegukOrPoomse': taegukOrPoomseName,
      'dirugui': diruguiList,
      'tchagui': tchaguiList,
      'maki': makiList,
    };
  }

  factory BeltContent.fromMap(Map<String, dynamic> map) {
    return BeltContent(
        meaning:
            Map<String, String>.from((map['meaning'] as Map<String, String>)),
        taegukOrPoomseName: map['taegukOrPoomse'] as String,
        diruguiList: List<String>.from((map['dirugui'] as List<String>)),
        tchaguiList: List<String>.from((map['tchagui'] as List<String>)),
        makiList: List<String>.from(
          (map['maki'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory BeltContent.fromJson(String source) =>
      BeltContent.fromMap(json.decode(source) as Map<String, dynamic>);
}
