import 'package:flutter/material.dart';

class ReusableInfonCard extends StatelessWidget {
  const ReusableInfonCard({
    super.key,
    required this.cardName,
    required this.title,
    this.subtitle,
    this.cardIcon,
    this.onTap,
  });

  final IconData? cardIcon;
  final String cardName;
  final String title;
  final String? subtitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 10.0,
              right: 10.0,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              borderRadius: const BorderRadiusDirectional.vertical(
                top: Radius.circular(25.0),
              ),
            ),
            margin: const EdgeInsets.only(left: 75),
            height: 40.0,
            width: cardName.isNotEmpty ? 340.0 : double.infinity,
            child: Center(
              child: Text(
                cardName,
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            height: 120.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(30.0),
                bottomStart: Radius.circular(30.0),
                bottomEnd: Radius.circular(30.0),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Icon(
                    cardIcon,
                    size: 50.0,
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: subtitle != null
                              ? const EdgeInsets.all(0.0)
                              : const EdgeInsets.only(top: 5.0),
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: subtitle != null
                                ? const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)
                                : const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    height: 1.1),
                          ),
                        ),
                      ),
                      subtitle != null
                          ? const SizedBox(
                              height: 10,
                            )
                          : const SizedBox.shrink(),
                      subtitle != null
                          ? Text(
                              subtitle!,
                              // textAlign: TextAlign.center,
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
