import 'package:flutter/material.dart';

class onlineShopTextFieldThema {
  onlineShopTextFieldThema._();

  static InputDecorationTheme lightinputDecorationThema = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
        focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black),
    ),
      focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),

  );
  static InputDecorationTheme darkinputDecorationThema = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
     focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
     focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}
