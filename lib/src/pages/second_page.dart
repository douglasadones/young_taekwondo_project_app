import 'package:flutter/material.dart';

import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/controller/data/objects.dart';
import 'package:taekwondo_jovem/src/utils/reusable_info_card.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda página'),
      ),
      body: Container(
        decoration: kContainerBackgroundDecoration,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableInfonCard(
                onTap: () async {
                  // readJson();
                  Objects.beltCreator();
                },
                cardName: "Princípios",
                title: "Princípios do Taekwondo",
                cardIcon: Icons.sports_martial_arts_outlined,
              ),
              const ReusableInfonCard(
                cardName: "Juramentos",
                title: "Juramentos do Taekwondo",
                cardIcon: Icons.sports_martial_arts_outlined,
              ),
              const ReusableInfonCard(
                cardName: "Etiqueta no Dojang",
                title: "Comportamento do praticante de Taekwondo",
                cardIcon: Icons.sports_martial_arts_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
