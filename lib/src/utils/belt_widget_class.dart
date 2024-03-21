import 'package:flutter/material.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';

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
            onTap: () {},
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
