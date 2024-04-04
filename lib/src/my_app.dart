import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/pages/basic_knowledges_page.dart';
import 'package:taekwondo_jovem/src/pages/selected_belt_specific_information_page.dart';
import 'package:taekwondo_jovem/src/pages/selection_belt_page.dart';
import 'package:taekwondo_jovem/src/pages/home_page.dart';
import 'package:taekwondo_jovem/src/pages/selected_belt_geral_info_page.dart';
import 'package:taekwondo_jovem/src/pages/specific_knowledge_page.dart';

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
          SelectionBeltPage.id: (context) => const SelectionBeltPage(),
          SelectedBeltGeralInfoPage.id: (context) =>
              const SelectedBeltGeralInfoPage(),
          SelectedBeltSpecificInformationPage.id: (context) =>
              const SelectedBeltSpecificInformationPage(),
          BasicKnowledgesPage.id: (context) => const BasicKnowledgesPage(),
          SpecificKnowledgePage.id: (context) => const SpecificKnowledgePage(),
        },
      ),
    );
  }
}
