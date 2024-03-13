import 'package:taekwondo_jovem/src/controller/data/taekwondo_project_data.dart';
import 'package:taekwondo_jovem/src/models/basic_knowledges_model.dart';
import 'package:taekwondo_jovem/src/models/belt_content_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/models/young_taekwondo_project_model.dart';
import 'package:taekwondo_jovem/src/models/dictionary_translator_model.dart';

const dictionaryPath = "assets/dictionary.json";
const youngTaekwondoProjectPath = "assets/young_taekwondo_project.json";

class ObjectDataCreator {
  static Future<List<Belt>> beltCreator() async {
    Map<String, dynamic> beltsData = await TaekwondoProjectData.data();
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

  static Future<YoungTaekwondoProject> projectInfoCreator() async {
    YoungTaekwondoProject projectIfonsData;
    Map<String, dynamic> taekwondoProjectData =
        await TaekwondoProjectData.data();
    projectIfonsData =
        YoungTaekwondoProject.fromMap(taekwondoProjectData["projectInfos"]);
    return projectIfonsData;
  }

  static Future<BasicKnowledges> basicKnowledgesCreator() async {
    BasicKnowledges basicKnowledgesData;
    Map<String, dynamic> taekwondoProjectData =
        await TaekwondoProjectData.data();

    basicKnowledgesData =
        BasicKnowledges.fromMap(taekwondoProjectData["basicknowledges"]);
    return basicKnowledgesData;
  }

  static Future<DictionaryTranslator> dictionaryCreator() async {
    DictionaryTranslator dictionaryData;
    Map<String, dynamic> newDictionaryData =
        await TaekwondoProjectData.dictionaryData();
    dictionaryData = DictionaryTranslator(dictionary: newDictionaryData);

    return dictionaryData;
  }
}
