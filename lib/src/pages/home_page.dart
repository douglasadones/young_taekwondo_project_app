import 'package:flutter/material.dart';

import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/utils/reusable_info_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Primeira Página'),
      // ),
      body: Container(
        decoration: kContainerBackgroundDecoration,
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableInfonCard(
                cardIcon: Icons.location_on_sharp,
                cardName: "Local de Treino",
                title: "U E Epaminondas Castelo Branco",
                subtitle:
                    "R. James Clark - B De Fatima, Parnaíba - PI, 64215-300",
              ),
              SizedBox(
                height: 20,
              ),
              ReusableInfonCard(
                cardIcon: Icons.date_range,
                cardName: "Data de Exames",
                title: "Nenhum Exame Marcado",
              ),
              SizedBox(
                height: 20,
              ),
              ReusableInfonCard(
                cardIcon: Icons.sports_martial_arts_outlined,
                cardName: "Sobre a equipe",
                title: "Projeto Taekwondo Jovem",
                subtitle: "História, Fundação e fundadores do projeto",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
