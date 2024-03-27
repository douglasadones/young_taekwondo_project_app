import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';

class SingleBeltButtonsPage extends StatelessWidget {
  static String id = 'SingleBeltButtonsPage';
  final Belt? belt;

  const SingleBeltButtonsPage({super.key, this.belt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: belt!.beltColor!.withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Faixa ${belt!.beltContent.color} - ${belt!.beltContent.meaning!.keys.first}",
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          belt!.beltContent.meaning!.values.firstOrNull,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
