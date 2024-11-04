import 'package:flutter/material.dart';

class onlineShopOutlinedBotomThema {
  onlineShopOutlinedBotomThema._();

  static OutlinedButtonThemeData lightoutlinedButtonThemeData =
      OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Colors.blue),
          padding: const EdgeInsetsDirectional.symmetric(vertical: 18),
          textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        )
      );
       static OutlinedButtonThemeData darkoutlinedButtonThemeData =
      OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Colors.blue),
          padding: const EdgeInsetsDirectional.symmetric(vertical: 18),
          textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        )
      );
}
