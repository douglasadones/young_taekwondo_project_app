import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BeltContent {
  final String? color;
  final Map<String, dynamic>? meaning;
  final String form;
  final List<dynamic>? kumKiok;
  final List<dynamic>? tchaguiList;
  final List<dynamic>? commandsList;
  final List<dynamic>? saguiList;
  final Map<String, dynamic>? kibonDonjak;
  final Map<String, dynamic>? sebonKiorugui;
  final Map<String, dynamic>? balKiSull;

  BeltContent({
    this.color,
    this.balKiSull,
    this.kibonDonjak,
    this.sebonKiorugui,
    this.meaning,
    required this.form,
    this.kumKiok,
    this.tchaguiList,
    this.commandsList,
    this.saguiList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': color,
      'meaning': meaning,
      'form': form,
      'kumKiok': kumKiok,
      'tchaguiList': tchaguiList,
      'commandsList': commandsList,
      'saguiList': saguiList,
      'kibonDonjak': kibonDonjak,
      'sebonKiorugui': sebonKiorugui,
      'balKiSull': balKiSull,
    };
  }

  factory BeltContent.fromMap(Map<String, dynamic> map) {
    return BeltContent(
      color: map['color'].toString(),
      meaning: map['meaning'] != null
          ? Map<String, dynamic>.from((map['meaning'] as Map<String, dynamic>))
          : null,
      kibonDonjak: map['Kibon Donjak'] != null
          ? Map<String, dynamic>.from(
              (map['Kibon Donjak'] as Map<String, dynamic>))
          : null,
      sebonKiorugui: map['Sebon Kiorugui'] != null
          ? Map<String, dynamic>.from(
              (map['Sebon Kiorugui'] as Map<String, dynamic>))
          : null,
      balKiSull: map['bal ki sull'] != null
          ? Map<String, dynamic>.from(
              (map['bal ki sull'] as Map<String, dynamic>))
          : null,
      form: map['form'].toString(),
      kumKiok: map['kum kiok'] != null
          ? List<dynamic>.from((map['kum kiok'] as List<dynamic>))
          : null,
      tchaguiList: map['tchagui'] != null
          ? List<dynamic>.from((map['tchagui'] as List<dynamic>))
          : null,
      commandsList: map['commands'] != null
          ? List<dynamic>.from((map['commands'] as List<dynamic>))
          : null,
      saguiList: map['sagui'] != null
          ? List<dynamic>.from((map['sagui'] as List<dynamic>))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BeltContent.fromJson(String source) =>
      BeltContent.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BeltContent(color: $color, meaning: $meaning, form: $form, kumKiok: $kumKiok, tchaguiList: $tchaguiList, commandsList: $commandsList, saguiList: $saguiList, kibonDonjak: $kibonDonjak, sebonKiorugui: $sebonKiorugui, balKiSull: $balKiSull)';
  }
}
