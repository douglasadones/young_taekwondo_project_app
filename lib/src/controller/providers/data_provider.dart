import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/models/data/object_data_creator.dart';
import 'package:taekwondo_jovem/src/models/basic_knowledges_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/models/dictionary_translator_model.dart';
import 'package:taekwondo_jovem/src/models/young_taekwondo_project_model.dart';

class DataProvider extends ChangeNotifier {
  Belt? currentBelt;
  bool isStrip = false;
  List<Belt> beltList = ObjectDataCreator.beltCreator();
  YoungTaekwondoProject projectInfoData =
      ObjectDataCreator.projectInfoCreator();
  BasicKnowledges basicKnowledgesData =
      ObjectDataCreator.basicKnowledgesCreator();
  DictionaryTranslator dictionaryTranslatorData =
      ObjectDataCreator.dictionaryCreator();
}
