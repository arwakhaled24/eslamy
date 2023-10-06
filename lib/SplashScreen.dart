import 'package:eslamy/Home/HomeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String RouteName = "splashScreen";

  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.RouteName);
      },
    );
    return Scaffold(
      body: Container(
        child: Image.asset("assets/images/splash_screen.png",
            fit: BoxFit.fitWidth, width: double.infinity),
      ),
    );
  }
}
