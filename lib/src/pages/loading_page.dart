import 'package:flutter/material.dart';

import 'package:taekwondo_jovem/src/controller/data/object_data_creator.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/basic_knowledges_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/models/dictionary_translator_model.dart';
import 'package:taekwondo_jovem/src/models/young_taekwondo_project_model.dart';

void takingData() async {
  List<Belt> beltList = await ObjectDataCreator.beltCreator();
  YoungTaekwondoProject projectInfoData =
      await ObjectDataCreator.projectInfoCreator();
  BasicKnowledges basicKnowledgesData =
      await ObjectDataCreator.basicKnowledgesCreator();
  DictionaryTranslator dictionaryTranslatorData =
      await ObjectDataCreator.dictionaryCreator();
}

class LoadingPage extends StatefulWidget {
  static String id = "loading_page";
  const LoadingPage({super.key});
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    takingData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                child: CircularProgressIndicator(),
                onTap: () {
                  // print(DataProvider().beltList.length);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
