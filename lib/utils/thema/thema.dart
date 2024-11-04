import 'package:flutter/material.dart';

import 'package:onlinemarket/utils/thema/CustomThema/appbarThema.dart';
import 'package:onlinemarket/utils/thema/CustomThema/buttom_sheet.dart';
import 'package:onlinemarket/utils/thema/CustomThema/chekbox_thema.dart';
import 'package:onlinemarket/utils/thema/CustomThema/chip_thema.dart';
import 'package:onlinemarket/utils/thema/CustomThema/eleveted_button_thema.dart';
import 'package:onlinemarket/utils/thema/CustomThema/outlined_buttom_thema.dart';
import 'package:onlinemarket/utils/thema/CustomThema/text_Thema.dart';
import 'package:onlinemarket/utils/thema/CustomThema/text_field_thema.dart';

class  onlineShopThema {
  onlineShopThema._();

//Light Thema
  static ThemeData lightthema = ThemeData(
    useMaterial3: true,
    fontFamily: 'Popins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: onlineShopTextThema.lightTextThema,
    elevatedButtonTheme: onlineShopElevetedButtonThema.lightElevetedButtomThema,
    appBarTheme: onlineShopAppbar.ligthAppbarThema,
    chipTheme: onlineShopChipThema.lightChipThema,
    checkboxTheme: onlineShopChekBox.lightChexboxThema,
    bottomSheetTheme: onlineShopButtomshett.ligthbummomShetThema,
    outlinedButtonTheme:
        onlineShopOutlinedBotomThema.lightoutlinedButtonThemeData,
    inputDecorationTheme: onlineShopTextFieldThema.lightinputDecorationThema,
  );

  //Dark Thema
  static ThemeData darkthema = ThemeData(
    useMaterial3: true,
    fontFamily: 'Popins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: onlineShopTextThema.darkTextThema,
    elevatedButtonTheme: onlineShopElevetedButtonThema.darkElevetedButtomThema,
    appBarTheme: onlineShopAppbar.darkAppbarThema,
    chipTheme: onlineShopChipThema.darkChipThema,
    checkboxTheme: onlineShopChekBox.darktChexboxThema,
    bottomSheetTheme: onlineShopButtomshett.darkbummomShetThema,
    outlinedButtonTheme:
        onlineShopOutlinedBotomThema.darkoutlinedButtonThemeData,
        inputDecorationTheme: onlineShopTextFieldThema.darkinputDecorationThema,
  );
}
