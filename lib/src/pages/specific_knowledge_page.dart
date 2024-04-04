import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/consts.dart';

class SpecificKnowledgePage extends StatelessWidget {
  static String id = 'Specific_knowledge_page';
  final String? appBarLabel;
  final dynamic content;
  const SpecificKnowledgePage({
    super.key,
    this.content,
    this.appBarLabel,
  });

  @override
  Widget build(BuildContext context) {
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
            child: content is List
                ? ListView.builder(
                    itemCount: content!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          content![index],
                          textAlign: TextAlign.justify,
                        ),
                      );
                    },
                  )
                : content.forEach((key, value) {
                    var teste = [key];

                    print(teste);

                    return teste;
                  })),
      ),
    );
  }
}
