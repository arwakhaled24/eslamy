import 'package:eslamy/Home/hadeth/hadeth.dart';
import 'package:eslamy/Home/hadeth/hadeth_detalis_screen.dart';
import 'package:flutter/material.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethDataClass hadeth;

  HadethTitleWidget({required this.hadeth});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Hadeth_details_screen.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
