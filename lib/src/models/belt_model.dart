// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:taekwondo_jovem/src/models/belt_content_model.dart';

class Belt {
  final Color color;
  final int gub;
  final BeltContent beltContent;

  Belt({
    required this.color,
    required this.gub,
    required this.beltContent,
  });

  @override
  String toString() => 'Belt(color: $color, gub: $gub, beltContent: $beltContent)';
}
