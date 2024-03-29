import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/pages/belt_button_page.dart';
import 'package:taekwondo_jovem/src/pages/home_page.dart';
import 'package:taekwondo_jovem/src/pages/single_belt_buttons_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Taekwondo Jovem',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => const HomePage(),
          BeltButtonPage.id: (context) => const BeltButtonPage(),
          SingleBeltButtonsPage.id: (context) => const SingleBeltButtonsPage(),
        },
      ),
    );
  }
}
