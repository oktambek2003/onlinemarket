import 'package:flutter/material.dart';
import 'package:onlinemarket/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),);
  }
}
