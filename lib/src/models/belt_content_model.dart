import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BeltContent {
  final Map<String, dynamic>? meaning;
  final String form;
  final List<dynamic>? kumKiok;
  final List<dynamic>? tchaguiList;
  final List<dynamic>? commandsList;
  final List<dynamic>? saguiList;

  BeltContent({
    this.meaning,
    required this.form,
    this.kumKiok,
    this.tchaguiList,
    this.commandsList,
    this.saguiList,
  });

  @override
  String toString() {
    return 'BeltContent(meaning: $meaning, form: $form, kumKiok: $kumKiok, tchaguiList: $tchaguiList, commands: $commandsList, saguiList: $saguiList)';
  }


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meaning': meaning,
      'form': form,
      'kumKiok': kumKiok,
      'tchaguiList': tchaguiList,
      'commandsList': commandsList,
      'saguiList': saguiList,
    };
  }

  factory BeltContent.fromMap(Map<String, dynamic> map) {
    return BeltContent(
      meaning: map['meaning'] != null ? Map<String, dynamic>.from((map['meaning'] as Map<String, dynamic>)) : null,
      form: map['form'].toString(),
      kumKiok: map['kum kiok'] != null ? List<dynamic>.from((map['kum kiok'] as List<dynamic>)) : null,
      tchaguiList: map['tchagui'] != null ? List<dynamic>.from((map['tchagui'] as List<dynamic>)) : null,
      commandsList: map['commands'] != null ? List<dynamic>.from((map['commands'] as List<dynamic>)) : null,
      saguiList: map['sagui'] != null ? List<dynamic>.from((map['sagui'] as List<dynamic>)) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BeltContent.fromJson(String source) => BeltContent.fromMap(json.decode(source) as Map<String, dynamic>);
}
