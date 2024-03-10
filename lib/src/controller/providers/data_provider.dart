import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/models/basic_knowledges_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/models/dictionary_translator_model.dart';
import 'package:taekwondo_jovem/src/models/young_taekwondo_project_model.dart';

class DataProvider extends ChangeNotifier {
  // List<Belt?> beltList;
  YoungTaekwondoProject? projectInfoData;
  BasicKnowledges? basicKnowledgesData;
  DictionaryTranslator? dictionaryTranslatorData;
}
