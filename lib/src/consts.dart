import 'package:flutter/material.dart';

const kContainerBackgroundDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromARGB(255, 168, 236, 226),
      Color.fromARGB(255, 225, 235, 247),
    ],
  ),
);

const Map<String, Color> kColorfulBeltsMap = {
  "branca": Colors.white,
  "amarela":Colors.yellow,
  "verde": Colors.green,
  "azul":Colors.blue,
  "vermelha":Colors.red,
  "preta": Colors.black,
};