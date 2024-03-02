import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/consts.dart';
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
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableInfonCard(
                cardName: "Princípios",
                title: "Princípios do Taekwondo",
                cardIcon: Icons.sports_martial_arts_outlined,
              ),
              ReusableInfonCard(
                cardName: "Juramentos",
                title: "Juramentos do Taekwondo",
                cardIcon: Icons.sports_martial_arts_outlined,
              ),
              ReusableInfonCard(
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
