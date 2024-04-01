import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/pages/selected_belt_geral_info_page.dart';

class BeltWidget extends StatelessWidget {
  const BeltWidget({
    required this.belt,
    required this.gubOrDan,
    required this.color,
    this.stripColor,
    super.key,
  });

  final int gubOrDan;
  final Color color;
  final Color? stripColor;
  final Belt belt;

  @override
  Widget build(BuildContext context) {
    String title = (gubOrDan < 11) ? 'Gub' : 'Dan';
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 17.0),
        child: Material(
          borderRadius: BorderRadius.circular(13),
          elevation: 2.0,
          child: InkWell(
            borderRadius: BorderRadius.circular(13),
            onTap: () {
              Provider.of<DataProvider>(context, listen: false).isStrip =
                  (stripColor != null) ? true : false;
              Provider.of<DataProvider>(context, listen: false).currentBelt =
                  belt;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SelectedBeltGeralInfoPage(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12)),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${(gubOrDan < 11) ? gubOrDan : gubOrDan - 10}° $title",
                    style: const TextStyle(
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
                          flex: stripColor != null ? 1 : 0,
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
          ),
        ),
      ),
    );
  }
}
