// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BasicKnowledges {
  final String history;
  final Map<String, dynamic> principles;
  final List<String> oaths;
  final Map<String, dynamic> tratments;
  final String dojangEtiquette;
  final List<String> commands;
  final List<String> numbers;
  final List<String> bodyParts;
  final List<String> definitions;

  BasicKnowledges({
    required this.history,
    required this.principles,
    required this.oaths,
    required this.tratments,
    required this.dojangEtiquette,
    required this.commands,
    required this.numbers,
    required this.bodyParts,
    required this.definitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'history': history,
      'principles': principles,
      'vow': oaths,
      'tratments': tratments,
      'dojangEtiquette': dojangEtiquette,
      'commands': commands,
      'numbers': numbers,
      'bodyParts': bodyParts,
      'definitions': definitions,
    };
  }

  factory BasicKnowledges.fromMap(Map<String, dynamic> map) {
    return BasicKnowledges(
      history: map['history'] as String,
      principles:
          Map<String, dynamic>.from((map['principles'] as Map<String, dynamic>)),
      oaths: List<String>.from(
        (map['vow'] as List<String>),
      ),
      tratments:
          Map<String, dynamic>.from((map['tratments'] as Map<String, dynamic>)),
      dojangEtiquette: map['dojangEtiquette'] as String,
      commands: List<String>.from((map['commands'] as List<String>)),
      numbers: List<String>.from((map['numbers'] as List<String>)),
      bodyParts: List<String>.from((map['bodyParts'] as List<String>)),
      definitions: List<String>.from((map['definitions'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory BasicKnowledges.fromJson(String source) =>
      BasicKnowledges.fromMap(json.decode(source) as Map<String, dynamic>);
}
