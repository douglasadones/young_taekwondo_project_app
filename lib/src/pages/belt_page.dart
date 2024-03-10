import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/consts.dart';
import 'package:taekwondo_jovem/src/controller/data/object_data_creator.dart';

class BeltPage extends StatefulWidget {
  static String id = 'faixa_page';
  const BeltPage({super.key});

  @override
  State<BeltPage> createState() => _BeltPageState();
}

class _BeltPageState extends State<BeltPage> {
  @override
  Widget build(BuildContext context) {
    List<Color> teste = [
      Colors.white,
      Colors.yellow,
      Colors.green,
      Colors.blue
    ];

    final testeasync = ObjectDataCreator().beltList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conteúdo por'),
      ),
      body: Container(
        decoration: kContainerBackgroundDecoration,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: teste.length,
            itemBuilder: ((context, index) {
              print(testeasync.length);
              return Row(
                children: [
                  BeltWidget(color: teste[index]),
                  const SizedBox(width: 10),
                  BeltWidget(color: teste[index]),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

class BeltWidget extends StatelessWidget {
  const BeltWidget({
    required this.color,
    this.stripColor,
    super.key,
  });

  final Color color;
  final Color? stripColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(12)),
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "N° Gub",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 40,
                      color: color,
                    ),
                  ),
                  Expanded(
                    flex: stripColor != null ? 1 : 0,
                    child: Container(
                      height: 40,
                      color: stripColor,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
