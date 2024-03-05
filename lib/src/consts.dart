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
  "white": Colors.white,
  "yellow":Colors.yellow,
  "green": Colors.green,
  "blue":Colors.blue,
  "red":Colors.red,
  "black": Colors.black,
};