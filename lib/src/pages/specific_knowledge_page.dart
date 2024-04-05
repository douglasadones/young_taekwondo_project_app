import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/consts.dart';

class SpecificKnowledgePage extends StatelessWidget {
  static String id = 'Specific_knowledge_page';
  final String? appBarLabel;
  final List<Widget>? content;
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
          height: double.infinity,
          decoration: kContainerBackgroundDecoration,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(children: content!),
            ),
          ),
        ));
  }
}
