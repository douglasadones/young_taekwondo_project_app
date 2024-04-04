import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/pages/basic_knowledges_page.dart';
import 'package:taekwondo_jovem/src/pages/selection_belt_page.dart';
import 'package:taekwondo_jovem/src/utils/reusable_info_card.dart';

class HomePage extends StatelessWidget {
  static String id = "home_page";
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kContainerBackgroundDecoration,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ReusableInfonCard(
                cardName: "Sobre a Equipe",
                title: "Projeto Taekwondo Jovem",
                cardIcon: Icons.sports_martial_arts_outlined,
              ),
              ReusableInfonCard(
                cardName: "Conhecimentos Básicos",
                title: "Sobre a arte Marcial e Deveres do Praticante",
                cardIcon: Icons.sports_martial_arts_outlined,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BasicKnowledgesPage()));
                },
              ),
              ReusableInfonCard(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SelectionBeltPage()));
                },
                cardName: "Faixas",
                title: "Conteúdo por Faixa",
                cardIcon: Icons.sports_martial_arts_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
