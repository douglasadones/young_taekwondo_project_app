// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ui';

import 'package:taekwondo_jovem/src/models/belt_content_model.dart';

class Belt {
  final Color color;
  final Color? stripe;
  final int gub;
  final BeltContent beltContent;

  Belt({
    required this.color,
    this.stripe,
    required this.gub,
    required this.beltContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': color.value,
      'stripe': stripe?.value,
      'gub': gub,
      'beltContent': beltContent.toMap(),
    };
  }

  factory Belt.fromMap(Map<String, dynamic> map) {
    return Belt(
      color: Color(map['color'] as int),
      stripe: map['stripe'] != null ? Color(map['stripe'] as int) : null,
      gub: map['gub'] as int,
      beltContent: BeltContent.fromMap(map['beltContent'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Belt.fromJson(String source) => Belt.fromMap(json.decode(source) as Map<String, dynamic>);

  Belt copyWith({
    Color? color,
    Color? stripe,
    int? gub,
    BeltContent? beltContent,
  }) {
    return Belt(
      color: color ?? this.color,
      stripe: stripe ?? this.stripe,
      gub: gub ?? this.gub,
      beltContent: beltContent ?? this.beltContent,
    );
  }

  @override
  String toString() {
    return 'Belt(color: $color, stripe: $stripe, gub: $gub, beltContent: $beltContent)';
  }
}
