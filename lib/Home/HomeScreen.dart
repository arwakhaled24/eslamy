import 'package:eslamy/Home/hadeth/hadeth_tab.dart';
import 'package:eslamy/Home/quran/quran_tab.dart';
import 'package:eslamy/Home/radio/radio_tab.dart';
import 'package:eslamy/Home/tasbeh/tasbeh_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String RouteName = "HOMEsCREEN";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/main_background.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islamy"),
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (index) {
            selectedTabIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio"),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    Quran_tab(),
    Hadeth_tab(),
    Tasbeh_tab(),
    Radio_tab(),
  ];
}
