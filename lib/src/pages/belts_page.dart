import 'package:flutter/material.dart';

import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/utils/reusable_info_card.dart';

class FaixaPage extends StatefulWidget {
  const FaixaPage({super.key});

  @override
  State<FaixaPage> createState() => _FaixaPageState();
}

class _FaixaPageState extends State<FaixaPage> {
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
            ],
          ),
        ),
      ),
    );
  }
}
