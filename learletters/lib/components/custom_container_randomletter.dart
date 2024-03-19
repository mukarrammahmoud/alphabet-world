import 'package:flutter/material.dart';

import '../color.dart';

class CustomContainerRandomLetter extends StatelessWidget {
  late String letter;
  CustomContainerRandomLetter({required this.letter});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          letter,
          style: TextStyle(
              fontSize: 30, color: lightBlueBorderColor, fontFamily: "Monadi"),
        ),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: lightBlueBorderColor)),
      ),
      onTap: () {},
    );
  }
}
