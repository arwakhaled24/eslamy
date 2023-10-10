import 'package:eslamy/Home/hadeth/hadeth.dart';
import 'package:flutter/material.dart';

class Hadeth_details_screen extends StatelessWidget {
  static const String routeName = "hadth dethails ";

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as HadethDataClass;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/main_background.png"))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text(arg.title)),
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Card(
                  elevation: 20,
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SingleChildScrollView(
                    child: Text(arg.Content,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
