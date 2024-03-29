import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';

class ReusableButton extends StatelessWidget {
  final String label;
  const ReusableButton({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation: 1.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(30.0),
        onTap: () {},
        child: Container(
          height: 57.0,
          decoration: BoxDecoration(
              color: Provider.of<DataProvider>(context)
                  .currentBelt!
                  .beltColor!
                  .withOpacity(0.3),
              // color: Colors.black.withOpacity(0.4),
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
