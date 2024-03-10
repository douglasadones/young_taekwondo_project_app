import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/controller/data/object_data_creator.dart';
import 'package:taekwondo_jovem/src/models/basic_knowledges_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/models/dictionary_translator_model.dart';
import 'package:taekwondo_jovem/src/models/young_taekwondo_project_model.dart';

class DataProvider extends ChangeNotifier {
  List<Belt> allBeltData = ObjectDataCreator.fromBeltData().beltList;
  // YoungTaekwondoProject allYoungTaekwondoProjectData =
  //     ObjectDataCreator.fromProjectInfoData().projectIfonsData;
  // BasicKnowledges allBasicKnowledgesData =
  //     ObjectDataCreator.fromBasicKnowledgesData().basicKnowledgesData;
  // DictionaryTranslator allDictionaryData =
  //     ObjectDataCreator.fromDictionaryData().dictionaryData;

  List<Belt> beltList() {
    return allBeltData;
  }
}
