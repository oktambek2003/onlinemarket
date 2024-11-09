import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/features/authencation/screens/login/login.dart';
import 'package:onlinemarket/splash_screen.dart';
import 'package:onlinemarket/utils/thema/thema.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: LoginScreen(),
    themeMode: ThemeMode.system,
    theme: onlineShopThema.lightthema,
    darkTheme: onlineShopThema.darkthema,);
  }
}
