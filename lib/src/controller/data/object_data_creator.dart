import 'package:taekwondo_jovem/src/controller/data/taekwondo_project_data.dart';
import 'package:taekwondo_jovem/src/models/belt_content_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/models/young_taekwondo_project_model.dart';

const dictionaryPath = "assets/dictionary.json";
const youngTaekwondoProjectPath = "assets/young_taekwondo_project.json";

class ObjectDataCreator {
  List<Belt> beltList = [];
  late YoungTaekwondoProject projectIfonsData;
  // late BasicKnowledges basicKnowledgesData;
  ObjectDataCreator() {
    beltCreator();
    projectInfoCreator();
    // basicKnowledgesCreator();
  }

  void beltCreator() async {
    Map<String, dynamic> beltsData = await TaekwondoProjectData.data();
    beltsData["belts"].forEach(
      (key, value) {
        Map<String, dynamic> beltData = value;
        Map<String, dynamic> beltContentData = value["beltContent"];

        Map<String, dynamic> beltStripData = value["strip"];
        Map<String, dynamic> beltStripContentData =
            value["strip"]["beltContent"];

        // print(Belt(
        //     beltColor: beltData["color"],
        //     beltGub: beltData["gub"],
        //     stripColor: beltStripData["color"],
        //     stripBeltGub: beltStripData["gub"],
        //     beltContent: BeltContent.fromMap(beltContentData),
        //     stripContent: BeltContent.fromMap(beltStripContentData)));

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
  }

  void projectInfoCreator() async {
    Map<String, dynamic> taekwondoProjectData =
        await TaekwondoProjectData.data();
    projectIfonsData =
        YoungTaekwondoProject.fromMap(taekwondoProjectData["projectInfos"]);
  }

  // void basicKnowledgesCreator() async {
  //   Map<String, dynamic> basicKnowledgesData =
  //       await TaekwondoProjectData.data();
  // }
}
