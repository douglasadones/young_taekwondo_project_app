import 'package:flutter/material.dart';

class BasicknowledgesPage extends StatelessWidget {
  final String subjectInfoType;
  const BasicknowledgesPage({super.key, required this.subjectInfoType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste'),
      ),
      body: Container(),
    );
  }
}
