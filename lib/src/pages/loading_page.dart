import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taekwondo_jovem/src/controller/providers/data_provider.dart';
import 'package:taekwondo_jovem/src/models/data/object_data_creator.dart';
import 'package:taekwondo_jovem/src/pages/home_page.dart';

void takingData() async {}

class LoadingPage extends StatefulWidget {
  static String id = "loading_page";
  const LoadingPage({super.key});
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DataProvider _dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                child: const CircularProgressIndicator(),
                onTap: () {
                  var teste = ObjectDataCreator.beltCreator();
                  print(_dataProvider.beltList);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
