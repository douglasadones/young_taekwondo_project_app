import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/basic_knowledges_model.dart';
import 'package:taekwondo_jovem/src/pages/specific_knowledge_page.dart';
import 'package:taekwondo_jovem/src/utils/knowledges_button.dart';
import 'package:taekwondo_jovem/src/utils/my_utils.dart';

class BasicKnowledgesPage extends StatelessWidget {
  static String id = 'basic_knowledges';

  const BasicKnowledgesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BasicKnowledges data =
        Provider.of<DataProvider>(context).basicKnowledgesData;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Conhecimentos Básicos",
        ),
      ),
      body: Container(
        decoration: kContainerBackgroundDecoration,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              KnowledgesButton(
                label: 'História do Taekwondo',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'História do Taekwondo',
                        content: MyUtils.widgetList(data.history),
                      ),
                    ),
                  );
                },
              ),
              KnowledgesButton(
                label: 'Princípios',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'Princípios',
                        content: MyUtils.widgetList(data.principles),
                      ),
                    ),
                  );
                },
              ),
              KnowledgesButton(
                label: 'Juramentos',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'Juramentos',
                        content: MyUtils.widgetList(data.oaths),
                      ),
                    ),
                  );
                },
              ),
              KnowledgesButton(
                label: 'Tratamentos',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'Tratamentos',
                        content: MyUtils.widgetList(data.tratments),
                      ),
                    ),
                  );
                },
              ),
              KnowledgesButton(
                label: 'Etiqueta No Dojang',
                onTap: () {
                  List<Widget> expansionTileList = [];
                  data.dojangEtiquette.forEach((key, value) {
                    List<Widget> currentBodyList = [];
                    for (String i in value) {
                      currentBodyList.add(
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '\u25cf $i',
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 17.0,
                              height: 1.7,
                            ),
                          ),
                        ),
                      );
                    }
                    expansionTileList.add(
                      ExpansionTile(
                        title: Text(key,
                            style:
                                const TextStyle(fontSize: 19.0, height: 1.9)),
                        children: currentBodyList,
                      ),
                    );
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'Etiqueta No Dojang',
                        content: expansionTileList,
                      ),
                    ),
                  );
                },
              ),
              KnowledgesButton(
                label: 'Comandos Básicos',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'Comandos Básicos',
                        content: MyUtils.widgetList(data.commands),
                      ),
                    ),
                  );
                },
              ),
              KnowledgesButton(
                label: 'Contagem',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'Comandos Básicos',
                        content: MyUtils.widgetList(data.numbers),
                      ),
                    ),
                  );
                },
              ),
              KnowledgesButton(
                label: 'Partes do Corpo',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'Partes do Corpo',
                        content: MyUtils.widgetList(data.bodyParts),
                      ),
                    ),
                  );
                },
              ),
              KnowledgesButton(
                label: 'Definições',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecificKnowledgePage(
                        appBarLabel: 'Definições',
                        content: MyUtils.widgetList(data.definitions),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// List<Widget>? widgetList(dynamic content) {
//   List<Widget> widgetList = [];
//   if (content is List) {
//     for (var value in content) {
//       widgetList.add(
//         ListTile(
//           title: Text(value),
//         ),
//       );
//     }
//   } else {
//     content.forEach(
//       (key, value) {
//         widgetList.add(
//           ListTile(
//             title: Text(key),
//             subtitle: Text(value),
//           ),
//         );
//       },
//     );
//   }
//   return widgetList;
// }
