// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/models/belt_content_model.dart';

class Belt {
  final Color? beltColor;
  final Color? stripColor;
  final int beltGub;
  final int stripBeltGub;
  final BeltContent beltContent;
  final BeltContent stripContent;

  Belt({
    required this.stripColor,
    required this.beltColor,
    required this.beltGub,
    required this.stripBeltGub,
    required this.beltContent,
    required this.stripContent,
  });

  @override
  String toString() {
    return 'Belt(beltColor: $beltColor, stripColor: $stripColor, beltGub: $beltGub, stripBeltGub: $stripBeltGub, beltContent: $beltContent, stripContent: $stripContent)';
  }
}
