import 'dart:convert';
import 'package:flutter/services.dart';

const dictionaryPath = "assets/dictionary.json";
const youngTaekwondoProjectPath = "assets/young_taekwondo_project.json";

class TaekwondoProjectData {
  static Future<Map<String, dynamic>> data() async {
    final String myLocalJson =
        await rootBundle.loadString(youngTaekwondoProjectPath);
    final Map<String, dynamic> decodedData = await jsonDecode(myLocalJson);
    return decodedData;
  }


  static Future<Map<String, dynamic>> dictionaryData() async {
    final String myLocalJson =
        await rootBundle.loadString(dictionaryPath);
    final Map<String, dynamic> decodedData = await jsonDecode(myLocalJson);
    return decodedData;
  }
}
