import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/pages/belt_button_page.dart';
import 'package:taekwondo_jovem/src/utils/reusable_info_card.dart';

enum InfoType {
  youngTaekowndoProject,
  knowledges,
  belts,
}

class HomePage extends StatelessWidget {
  static String id = "home_page";
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira página'),
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BeltButtonPage()));
                },
                cardName: "Faixas",
                title: "Conteúdo por Faixa",
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
