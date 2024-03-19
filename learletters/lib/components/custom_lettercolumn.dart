import 'package:flutter/material.dart';

import '../color.dart';

class CustomLetterColumn extends StatelessWidget {
  late String text;

  CustomLetterColumn({required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 40, color: keywordLetterColor, fontFamily: "Monadi"),
        ),
        Container(
          height: 4,
          width: 24,
          color: keywordLetterUnderLineColor,
        )
      ],
    );
  }
}
