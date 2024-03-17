import 'package:flutter/material.dart';

import '../color.dart';
import 'custom_text.dart';

Widget customContainer(String title) {
  return Container(
    padding: EdgeInsets.all(3),
    width: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(3),
      color: whiteColor,
      border: Border.all(color: blueBorderColor),
    ),
    child: customText(title, txtColor: blueColor, fontSizee: 15),
  );
}
