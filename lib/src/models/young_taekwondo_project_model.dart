import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class YoungTaekwondoProject {
  final String history;
  final DateTime foundationDate;
  final List<String> founders;

  YoungTaekwondoProject({
    required this.history,
    required this.foundationDate,
    required this.founders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'history': history,
      'foundationDate': foundationDate.millisecondsSinceEpoch,
      'founders': founders,
    };
  }

  factory YoungTaekwondoProject.fromMap(Map<String, dynamic> map) {
    return YoungTaekwondoProject(
        history: map['history'] as String,
        foundationDate:
            DateTime.fromMillisecondsSinceEpoch(map['foundationDate'] as int),
        founders: List<String>.from((map['founders'] as List<String>)));
  }

  String toJson() => json.encode(toMap());

  factory YoungTaekwondoProject.fromJson(String source) =>
      YoungTaekwondoProject.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
