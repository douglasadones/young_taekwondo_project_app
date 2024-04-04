import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/basic_knowledges_model.dart';
import 'package:taekwondo_jovem/src/pages/specific_knowledge_page.dart';
import 'package:taekwondo_jovem/src/utils/knowledges_button.dart';

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
                        content: [data.history],
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
                        content: data.principles,
                      ),
                    ),
                  );
                },
              ),
              const KnowledgesButton(
                label: 'Juramentos',
              ),
              const KnowledgesButton(
                label: 'Tratamentos',
              ),
              const KnowledgesButton(
                label: 'Etiqueta No Dojang',
              ),
              const KnowledgesButton(
                label: 'Comandos Básicos',
              ),
              const KnowledgesButton(
                label: 'Contagem',
              ),
              const KnowledgesButton(
                label: 'Partes do Corpo',
              ),
              const KnowledgesButton(
                label: 'Definições',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
