import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/utils/belt_widget_class.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';

class BeltButtonPage extends StatefulWidget {
  static String id = 'faixa_page';
  const BeltButtonPage({super.key});

  @override
  State<BeltButtonPage> createState() => _BeltButtonPageState();
}

class _BeltButtonPageState extends State<BeltButtonPage> {
  @override
  Widget build(BuildContext context) {
    final beltList = Provider.of<DataProvider>(context).beltList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conteúdo por'),
      ),
      body: Container(
        decoration: kContainerBackgroundDecoration,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: beltList.length,
            itemBuilder: ((context, index) {
              return Row(
                children: [
                  BeltWidget(
                    belt: beltList[index],
                    color: beltList[index].beltColor!,
                    gubOrDan: beltList[index].beltGub,
                  ),
                  const SizedBox(width: 10),
                  BeltWidget(
                    belt: beltList[index],
                    gubOrDan: beltList[index].stripBeltGub,
                    color: beltList[index].beltColor!,
                    stripColor: beltList[index].stripColor!,
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
