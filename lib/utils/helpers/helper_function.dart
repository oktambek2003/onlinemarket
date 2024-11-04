import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class onlineShopFunction {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == "Red") {
      return Colors.red;
    } else if (value == "Blue") {
      return Colors.blue;
    } else if (value == "Pink") {
      return Colors.pink;
    } else if (value == "Grey") {
      return Colors.grey;
    } else if (value == "Purple") {
      return Colors.purple;
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "White") {
      return Colors.white;
    } else if (value == "Brown") {
      return Colors.brown;
    } else if (value == "Teal") {
      return Colors.teal;
    } else if (value == "Indigo") {
      return Colors.indigo;
    } else if (value == "Yellow") {
      return Colors.yellow;
    } else if (value == "Orange") {
      return Colors.orange;
    }
    return null;
  }

  static void showSnackbar(String massage) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  static void showAlert(String title, String massage) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(massage),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("OK"))
            ],
          );
        });
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static String trouncateText(String text, int maxLenght) {
    if (text.length <= maxLenght) {
      return text;
    } else {
      return '${text.substring(maxLenght)}';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidht() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime data,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(data);
  }

  static List<onlineShop> removeDublication<onlineShop>(List<onlineShop> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}
