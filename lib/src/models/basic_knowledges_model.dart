// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BasicKnowledges {
  final String history;
  final Map<String, dynamic> principles;
  final List<dynamic> oaths;
  final Map<String, dynamic> tratments;
  final Map<String, dynamic> dojangEtiquette;
  final List<dynamic> commands;
  final List<dynamic> numbers;
  final List<dynamic> bodyParts;
  final List<dynamic> definitions;

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
      'oaths': oaths,
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
      history: map['History'] as String,
      principles: Map<String, dynamic>.from(
          (map['principles'] as Map<String, dynamic>)),
      oaths: List<dynamic>.from((map['oaths'] as List<dynamic>)),
      tratments:
          Map<String, dynamic>.from((map['tratments'] as Map<String, dynamic>)),
      dojangEtiquette: Map<String, dynamic>.from(
          (map['dojangEtiquette'] as Map<String, dynamic>)),
      commands: List<dynamic>.from((map['commands'] as List<dynamic>)),
      numbers: List<dynamic>.from((map['numbers'] as List<dynamic>)),
      bodyParts: List<dynamic>.from((map['bodyParts'] as List<dynamic>)),
      definitions: List<dynamic>.from((map['definitions'] as List<dynamic>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory BasicKnowledges.fromJson(String source) =>
      BasicKnowledges.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BasicKnowledges(history: $history, principles: $principles, oaths: $oaths, tratments: $tratments, dojangEtiquette: $dojangEtiquette, commands: $commands, numbers: $numbers, bodyParts: $bodyParts, definitions: $definitions)';
  }
}
