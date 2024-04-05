import 'package:flutter/material.dart';

class MyUtils {
  static List<Widget>? widgetList(dynamic content,
      [Map<String, dynamic>? dictionary]) {
    List<Widget> widgetList = [];
    if (content is List) {
      for (var value in content) {
        widgetList.add(
          ListTile(
            title: Text(
              value,
              style: const TextStyle(fontSize: 16.0, height: 1.9),
            ),
          ),
        );
      }
    } else if (content is Map) {
      content.forEach(
        (key, value) {
          widgetList.add(
            ListTile(
                title: Text(
                  key,
                  style: const TextStyle(fontSize: 19.0, height: 1.9),
                ),
                subtitle: Text(
                  value,
                  style: const TextStyle(fontSize: 16.0, height: 1.9),
                )),
          );
        },
      );
    } else {
      return [
        Text(
          content.toString(),
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 16.0, height: 1.9),
        ),
      ];
    }
    return widgetList;
  }
}
