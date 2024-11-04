import 'package:flutter/material.dart';

class onlineShopChipThema {
  onlineShopChipThema._();
  static ChipThemeData lightChipThema = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding:
        const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 12),
    checkmarkColor: Colors.white,
  );
   static ChipThemeData darkChipThema =const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle:  TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding:
        const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 12),
    checkmarkColor: Colors.white,
  );
}
