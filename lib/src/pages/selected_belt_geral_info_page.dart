import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/belt_content_model.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/pages/selected_belt_specific_information_page.dart';
import 'package:taekwondo_jovem/src/utils/reusable_button.dart';
import 'package:taekwondo_jovem/src/utils/capitalizing_string.dart';

class SelectedBeltGeralInfoPage extends StatelessWidget {
  static String id = 'selected_belt_geral_info_page';

  const SelectedBeltGeralInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Belt belt = Provider.of<DataProvider>(context).currentBelt!;
    bool isStrip = Provider.of<DataProvider>(context).isStrip;
    BeltContent currentContent = isStrip ? belt.stripContent : belt.beltContent;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: belt.beltColor,
        title: Text(
          "Faixa ${belt.beltContent.color.toString().capitalize()} ${(isStrip) ? 'Ponteira' : ''}",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color:
                  belt.beltColor == Colors.black ? Colors.white : Colors.black),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        belt.beltContent.meaning!.keys.first,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
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
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      currentContent.kumKiok!.isNotEmpty
                          ? ReusableButton(
                              label: "Socos",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedBeltSpecificInformationPage(
                                      label: "Socos",
                                      content: currentContent.kumKiok,
                                    ),
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                      currentContent.tchaguiList!.isNotEmpty
                          ? ReusableButton(
                              label: "Chutes",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedBeltSpecificInformationPage(
                                      label: "Chutes",
                                      content: currentContent.tchaguiList,
                                    ),
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                      currentContent.saguiList!.isNotEmpty
                          ? ReusableButton(
                              label: "Bases",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SelectedBeltSpecificInformationPage(
                                        label: "Bases",
                                        content: currentContent.saguiList,
                                      ),
                                    ));
                              },
                            )
                          : const SizedBox(),
                      [currentContent.form].isNotEmpty
                          ? ReusableButton(
                              label: "Movimentos de Faixa",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedBeltSpecificInformationPage(
                                      label: "Movimentos de Faixa",
                                      content: [currentContent.form],
                                    ),
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                      currentContent.commandsList!.isNotEmpty
                          ? ReusableButton(
                              label: "Comandos",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedBeltSpecificInformationPage(
                                      label: "Comandos",
                                      content: currentContent.commandsList,
                                    ),
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                      currentContent.kibonDonjak != null &&
                              currentContent.kibonDonjak!.isNotEmpty
                          ? ReusableButton(
                              label: "KibonDonjak",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedBeltSpecificInformationPage(
                                      label: "KibonDonjak",
                                      content: currentContent.kibonDonjak,
                                    ),
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                      currentContent.sebonKiorugui != null &&
                              currentContent.sebonKiorugui!.isNotEmpty
                          ? ReusableButton(
                              label: "KibonDonjak",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedBeltSpecificInformationPage(
                                      label: "KibonDonjak",
                                      content: currentContent.sebonKiorugui,
                                    ),
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                      currentContent.balKiSull != null &&
                              currentContent.balKiSull!.isNotEmpty
                          ? ReusableButton(
                              label: "KibonDonjak",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedBeltSpecificInformationPage(
                                      label: "KibonDonjak",
                                      content: currentContent.balKiSull,
                                    ),
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                    ],
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
