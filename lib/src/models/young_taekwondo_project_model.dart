import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class YoungTaekwondoProject {
  final String history;
  final String foundationDate;
  final List<dynamic> founders;
  final String projectName;
  final String kwanJamNim;
  final String location;

  YoungTaekwondoProject({
    required this.location,
    required this.kwanJamNim,
    required this.projectName,
    required this.history,
    required this.foundationDate,
    required this.founders,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'history': history,
      'foundationDate': foundationDate,
      'founders': founders,
      'projectName': projectName,
      'kwanJamNim': kwanJamNim,
      'location': location,
    };
  }

  factory YoungTaekwondoProject.fromMap(Map<String, dynamic> map) {
    return YoungTaekwondoProject(
      history: map['History'] as String,
      foundationDate: map['Foundation date'] as String,
      founders: map['Founder'],
      projectName: map['ProjectName'] as String,
      kwanJamNim: map['Kwan-jam-nim'] as String,
      location: map['Location'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory YoungTaekwondoProject.fromJson(String source) => YoungTaekwondoProject.fromMap(json.decode(source) as Map<String, dynamic>);



  @override
  String toString() {
    return 'YoungTaekwondoProject(history: $history, foundationDate: $foundationDate, founders: $founders, projectName: $projectName, kwanJamNim: $kwanJamNim, location: $location)';
  }
}
