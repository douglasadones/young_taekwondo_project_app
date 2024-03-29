import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/utils/reusable_button.dart';

class SelectedBeltGeralInfoPage extends StatelessWidget {
  static String id = 'selected_belt_geral_info_page';
  final bool? isStrip;

  const SelectedBeltGeralInfoPage({super.key, this.isStrip});

  @override
  Widget build(BuildContext context) {
    Belt belt = Provider.of<DataProvider>(context).currentBelt!;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    belt.beltColor!.withOpacity(0.2),
                    belt.beltColor!.withOpacity(0.2),
                    (isStrip!)
                        ? belt.stripColor!.withOpacity(0.2)
                        : belt.beltColor!.withOpacity(0.2),
                    belt.beltColor!.withOpacity(0.2),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Faixa ${belt.beltContent.color} ${(isStrip!) ? 'Ponteira' : ''} - ${belt.beltContent.meaning!.keys.first}",
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
                              belt.beltContent.meaning!.values.firstOrNull,
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
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.grey.shade200,
              ),
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ReusableButton(
                          label: "Socos",
                        ),
                        SizedBox(height: 20.0),
                        ReusableButton(
                          label: "Chutes",
                        ),
                        SizedBox(height: 20.0),
                        ReusableButton(
                          label: "Bases",
                        ),
                        SizedBox(height: 20.0),
                        ReusableButton(
                          label: "Defesas",
                        ),
                        SizedBox(height: 20.0),
                        ReusableButton(
                          label: "Movimentos de Faixa",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
