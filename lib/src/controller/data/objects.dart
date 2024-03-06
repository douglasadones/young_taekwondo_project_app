import 'package:taekwondo_jovem/src/controller/data/taekwondo_project_data.dart';
import 'package:taekwondo_jovem/src/models/belt_content_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';

const dictionaryPath = "assets/dictionary.json";
const youngTaekwondoProjectPath = "assets/young_taekwondo_project.json";

class Objects {
  static Map<String, dynamic> teste = {};
  static void beltCreator() async {
    Map<String, dynamic> beltsData = await TaekwondoProjectData.data();

    beltsData["belts"].forEach(
      (key, value) {
        Map<String, dynamic> beltData = value;
        Map<String, dynamic> beltContentData = value["beltContent"];

        Map<String, dynamic> beltStripData = value["strip"];
        Map<String, dynamic> beltStripContentData =
            value["strip"]["beltContent"];

        print(Belt(
            beltColor: beltData["color"],
            beltGub: beltData["gub"],
            stripColor: beltStripData["color"],
            stripBeltGub: beltStripData["gub"],
            beltContent: BeltContent.fromMap(beltContentData),
            stripContent: BeltContent.fromMap(beltStripContentData)));
      },
    );
  }
}
