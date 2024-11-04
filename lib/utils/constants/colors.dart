import 'package:flutter/material.dart';

class onlineShopColors {
  onlineShopColors._();
//App Basic Color
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondColor = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

//Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0, 0),
    colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ]);

  //Text Color
  static const Color textPrimery = Color(0xFF333333);
  static const Color TextScondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  //Bacround Color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primeryBacround = Color(0xFFF3F5FF);

//Bacround Container Color
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = onlineShopColors.textWhite.withOpacity(0.1);

  //Buttom Color

  static const Color burromPrimery = Color(0xFF4b68ff);
  static const Color burromSecond = Color(0xFF6C757D);
  static const Color burromDisabled = Color(0xFFC4C4C4);

//Border Colors
  static const Color borderPrimery = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //Error and Validator Color

  static const Color erroe = Color(0xFFD32F2F);
  static const Color succes = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
