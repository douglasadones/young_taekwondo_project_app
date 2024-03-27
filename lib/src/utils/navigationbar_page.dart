import 'package:flutter/material.dart';

import 'package:taekwondo_jovem/src/pages/belt_button_page.dart';
import 'package:taekwondo_jovem/src/pages/second_page.dart';
import 'package:taekwondo_jovem/src/pages/home_page.dart';

class NavigationbarPage extends StatefulWidget {
  static String id = 'navigationbar_page';
  const NavigationbarPage({super.key});

  @override
  State<NavigationbarPage> createState() => _NavigationbarPageState();
}

class _NavigationbarPageState extends State<NavigationbarPage> {
  int selectedIndexPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            selectedIndexPage = index;
          });
        },
        selectedIndex: selectedIndexPage,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Faixas",
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Fundamentos",
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Início",
          ),
        ],
      ),
      body: const <Widget>[
        BeltButtonPage(),
        HomePage(),
        SecondPage(),
      ][selectedIndexPage],
    );
  }
}
