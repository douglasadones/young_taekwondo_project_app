import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';

class SingleBeltButtonsPage extends StatelessWidget {
  static String id = 'SingleBeltButtonsPage';
  final Belt? belt;
  final bool? isStrip;

  const SingleBeltButtonsPage({super.key, this.belt, this.isStrip});

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
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    belt!.beltColor!.withOpacity(0.2),
                    belt!.beltColor!.withOpacity(0.2),
                    (isStrip!)
                        ? belt!.stripColor!.withOpacity(0.2)
                        : belt!.beltColor!.withOpacity(0.2),
                    belt!.beltColor!.withOpacity(0.2),
                  ],
                ),
                // color: belt!.beltColor!.withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Faixa ${belt!.beltContent.color} ${(isStrip!) ? 'Ponteira' : ''} - ${belt!.beltContent.meaning!.keys.first}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SingleChildScrollView(
                            controller: ScrollController(
                                initialScrollOffset: CircularProgressIndicator
                                    .strokeAlignCenter),
                            physics: const AlwaysScrollableScrollPhysics(
                                parent: BouncingScrollPhysics()),
                            child: Text(
                              belt!.beltContent.meaning!.values.firstOrNull,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(fontSize: 17.0),
                            ),
                          ),
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
