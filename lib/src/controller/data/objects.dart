import 'package:taekwondo_jovem/src/controller/data/taekwondo_project_data.dart';
import 'package:taekwondo_jovem/src/models/belt_content_model.dart';

const dictionaryPath = "assets/dictionary.json";
const youngTaekwondoProjectPath = "assets/young_taekwondo_project.json";

class Objects {
  static Map<String, dynamic> teste = {};
  static void beltCreator() async {
    Map<String, dynamic> beltsData = await TaekwondoProjectData.data();
    // print(beltsData["belts"]);

    beltsData["belts"].forEach(
      (key, value) {
        // print(value["beltContent"].runtimeType);
        Map<String, dynamic> beltcontentData = value["beltContent"];
        

        BeltContent.fromMap(beltcontentData);

        // print(BeltContent(
        //   meaning: beltcontentData["meaning"],
        //   form: beltcontentData["form"],
        //   diruguiList: beltcontentData["dirugui"],
        //   tchaguiList: beltcontentData["tchagui"],
        //   makiList: beltcontentData["maki"],
        //   saguiList: beltcontentData["sagui"],
        //   stripContent: beltcontentData["strip"],
        //   kumKiok: beltcontentData["kum kiok"],
        // ));
      },
    );
  }
}
