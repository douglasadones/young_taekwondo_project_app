import 'package:flutter/material.dart';

class KnowledgesButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const KnowledgesButton({
    super.key,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(30.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(30.0),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
            ),
            height: 60.0,
            child: Center(
                child: Text(
              label,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            )),
          ),
        ),
      ),
    );
  }
}