import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/belt_model.dart';
import 'package:taekwondo_jovem/src/pages/selected_belt_specific_information_page.dart';

class ReusableButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const ReusableButton({
    required this.onTap,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Belt belt = Provider.of<DataProvider>(context).currentBelt!;
    bool? isStrip = Provider.of<DataProvider>(context).isStrip;
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation: 1.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(30.0),
        onTap: onTap,
        child: Container(
          height: 57.0,
          decoration: BoxDecoration(
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
              borderRadius: BorderRadius.circular(30.0)),
          constraints: const BoxConstraints(
            maxWidth: 200.0,
            maxHeight: 200.0,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
