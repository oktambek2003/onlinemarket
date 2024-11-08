import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onlinemarket/features/authencation/screens/onboarding/onboarding.dart';
import 'package:onlinemarket/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // 3 soniyadan so‘ng HomeScreen ekraniga o‘tadi
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnboardingScreen()),
      );
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/logos/background.png",),fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(child: Image(image: AssetImage("assets/logos/logo.png"),width: 100,)),
          Center(child: Text("MESUMA",style: TextStyle(fontSize: 30,color: Colors.red),),)
        ],),
      )
      
    );
  }
}