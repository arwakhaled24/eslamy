import 'package:flutter/material.dart';

import '../sura_details_screen/sura_details_screen.dart';

class VersNameWidget extends StatelessWidget {
  String title;

  int index;

  VersNameWidget({required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routName,
            arguments: SuraDetailsScreenArg(title: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(title, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
