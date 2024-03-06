// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:taekwondo_jovem/src/utils/capitalizing_string.dart';

class DictionaryTranslator {
  DictionaryTranslator({required this.dictionary});
  final Map<String, dynamic> dictionary;

  List<dynamic>? search({required String word, required bool accuracySearch}) {
    String lowerCase = word.toLowerCase();
    List<dynamic>? results = [];

    if (accuracySearch) {
      dictionary.forEach((key, value) {
        if (key.toLowerCase() == lowerCase ||
            value['meaning'].toString().toLowerCase() == lowerCase ||
            value['accuracyHelper']
                .toString()
                .toLowerCase()
                .contains(lowerCase)) {
          results.add(dictionary[key]);
        }
      });
    } else {
      dictionary.forEach((key, value) {
        if (key.toLowerCase().contains(lowerCase) ||
            value['meaning'].toString().toLowerCase().contains(lowerCase) ||
            value['accuracyHelper']
                .toString()
                .toLowerCase()
                .contains(lowerCase)) {
          results.add(dictionary[key]);
        }
      });
    }

    return results;
  }

  @override
  String toString() => 'DictionaryTranslator(dictionary: $dictionary)';
}
