import 'package:flutter/material.dart';
import '../color.dart';

Widget customText(
  String txt, {
  Color txtColor = whiteColor,
  double fontSizee = 25.0,
}) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: TextStyle(color: txtColor, fontSize: fontSizee),
  );
}
