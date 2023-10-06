import 'package:eslamy/Home/HomeScreen.dart';
import 'package:eslamy/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'Home/sura_details_screen/sura_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.RouteName,
      routes: {
        HomeScreen.RouteName: (context) => HomeScreen(),
        SplashScreen.RouteName: (context) => SplashScreen(),
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
      },
      theme: ThemeData(
          backgroundColor: Colors.transparent,
          primaryColor: Color(0xFFB7935F),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 30,
              )),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color(0xFFB7935F),
              selectedItemColor: Color(0xff242424),
              unselectedItemColor: Colors.white)),
    );
  }
}
