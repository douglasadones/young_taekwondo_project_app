import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const String path = '';

class GetAsyncTeste {
  void teste() async {
    var teste = await rootBundle.loadString(key);
  }
}
