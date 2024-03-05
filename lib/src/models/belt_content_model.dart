import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BeltContent {
  final Map<String, String> meaning;
  final String form;
  final List<String>? kumKiok;
  final List<String>? diruguiList;
  final List<String>? tchaguiList;
  final List<String>? makiList;
  final List<String>? saguiList;
  final Map<String, dynamic>? stripContent;
  
  BeltContent({
    required this.meaning,
    required this.form,
    this.kumKiok,
    this.diruguiList,
    this.tchaguiList,
    this.makiList,
    this.saguiList,
    this.stripContent,
  });


  @override
  String toString() {
    return 'BeltContent(meaning: $meaning, form: $form, kumKiok: $kumKiok, diruguiList: $diruguiList, tchaguiList: $tchaguiList, makiList: $makiList, saguiList: $saguiList, stripContent: $stripContent)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meaning': meaning,
      'form': form,
      'kumKiok': kumKiok,
      'diruguiList': diruguiList,
      'tchaguiList': tchaguiList,
      'makiList': makiList,
      'saguiList': saguiList,
      'stripContent': stripContent,
    };
  }

  factory BeltContent.fromMap(Map<String, dynamic> map) {
    return BeltContent(
      meaning: Map<String, String>.from((map['meaning'] as Map<String, String>)),
      form: map['form'] as String,
      kumKiok: map['kumKiok'] != null ? List<String>.from((map['kumKiok'] as List<String>)) : null,
      diruguiList: map['diruguiList'] != null ? List<String>.from((map['diruguiList'] as List<String>)) : null,
      tchaguiList: map['tchaguiList'] != null ? List<String>.from((map['tchaguiList'] as List<String>)) : null,
      makiList: map['makiList'] != null ? List<String>.from((map['makiList'] as List<String>)) : null,
      saguiList: map['saguiList'] != null ? List<String>.from((map['saguiList'] as List<String>)) : null,
      stripContent: map['stripContent'] != null ? Map<String, dynamic>.from((map['stripContent'] as Map<String, dynamic>)) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BeltContent.fromJson(String source) => BeltContent.fromMap(json.decode(source) as Map<String, dynamic>);
}
