import 'package:flutter/material.dart';

import '../color.dart';

Widget customContainerLatter(int index) {
  return Container(
    margin: EdgeInsets.all(10),
    alignment: Alignment.centerLeft,
    // padding: EdgeInsets.only(right: 20),
    height: 60,
    width: 60,
    decoration: BoxDecoration(
        border: Border.all(color: blueBorderColor, width: 3),
        borderRadius: BorderRadius.circular(100),
        color: lightBlueColor,
        image: DecorationImage(
            image: index == 0
                ? AssetImage("assets/images/letter1.png")
                : AssetImage("assets/images/lock.png"),
            fit: index == 0 ? null : BoxFit.cover)),
  );
}
