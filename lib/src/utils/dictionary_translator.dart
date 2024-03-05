import 'package:taekwondo_jovem/src/utils/capitalizing_string.dart';

class DictionaryTranslator {
  DictionaryTranslator({required this.dictionary});
  final Map<String, Map<String, String?>> dictionary;

  Map<String, String?>? translator({required String koreanWord}) {
    String capitalized = koreanWord.capitalize();
    return dictionary[capitalized];
  }
}
