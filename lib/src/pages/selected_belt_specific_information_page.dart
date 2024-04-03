import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/utils/capitalizing_string.dart';

class SelectedBeltSpecificInformationPage extends StatelessWidget {
  static String id = "selected_belt_specific_information_page";
  final String? label;
  final List<dynamic>? content;
  const SelectedBeltSpecificInformationPage(
      {super.key, this.label, this.content});

  @override
  Widget build(BuildContext context) {
    Belt belt = Provider.of<DataProvider>(context).currentBelt!;
    bool? isStrip = Provider.of<DataProvider>(context).isStrip;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: belt.beltColor,
        title: Text(
          "Faixa ${belt.beltContent.color.toString().capitalize()} ${(isStrip!) ? 'Ponteira' : ''}",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
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
                    (isStrip)
                        ? belt.stripColor!.withOpacity(0.2)
                        : belt.beltColor!.withOpacity(0.2),
                    belt.beltColor!.withOpacity(0.2),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      label!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: ListView.builder(
                  itemCount: content!.length,
                  itemBuilder: (context, index) {
                    // print();
                    return ListTile(
                      title: Text(content![index].toString()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
