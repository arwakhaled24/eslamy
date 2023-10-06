import 'package:flutter/material.dart';

class VerContent extends StatelessWidget {
  String content;

  VerContent({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(content,
          textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
    );
  }
}
