import 'package:taekwondo_jovem/src/models/data/dictionary_json_data.dart';
import 'package:taekwondo_jovem/src/models/data/young_taekwondo_project_json.dart';
import 'package:taekwondo_jovem/src/models/basic_knowledges_model.dart';
import 'package:taekwondo_jovem/src/models/belt_content_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/models/young_taekwondo_project_model.dart';
import 'package:taekwondo_jovem/src/models/dictionary_translator_model.dart';

class ObjectDataCreator {
  static Map<String, dynamic> allTKDData = youngTaekwondoProjectData;
  static Map<String, dynamic> allDictionaryData = dictionaryData;
  static List<Belt> beltCreator() {
    Map<String, dynamic> beltsData = allTKDData;
    List<Belt> beltList = [];
    beltsData["belts"].forEach(
      (key, value) {
        Map<String, dynamic> beltData = value;
        Map<String, dynamic> beltContentData = value["beltContent"];

        Map<String, dynamic> beltStripData = value["strip"];
        Map<String, dynamic> beltStripContentData =
            value["strip"]["beltContent"];

        beltList.add(
          Belt(
            beltColor: beltData["color"],
            beltGub: beltData["gub"],
            stripColor: beltStripData["color"],
            stripBeltGub: beltStripData["gub"],
            beltContent: BeltContent.fromMap(beltContentData),
            stripContent: BeltContent.fromMap(beltStripContentData),
          ),
        );
      },
    );
    return beltList;
  }

  static YoungTaekwondoProject projectInfoCreator() {
    YoungTaekwondoProject projectIfonsData;
    Map<String, dynamic> taekwondoProjectData = allTKDData;
    projectIfonsData =
        YoungTaekwondoProject.fromMap(taekwondoProjectData["projectInfos"]);
    return projectIfonsData;
  }

  static BasicKnowledges basicKnowledgesCreator() {
    BasicKnowledges basicKnowledgesData;
    Map<String, dynamic> taekwondoProjectData = allTKDData;

    basicKnowledgesData =
        BasicKnowledges.fromMap(taekwondoProjectData["basicknowledges"]);
    return basicKnowledgesData;
  }

  static DictionaryTranslator dictionaryCreator() {
    DictionaryTranslator dictionaryData;
    Map<String, dynamic> newDictionaryData = allTKDData;
    dictionaryData = DictionaryTranslator(dictionary: newDictionaryData);
    return dictionaryData;
  }
}
