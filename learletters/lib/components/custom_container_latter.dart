import 'package:flutter/material.dart';

import '../color.dart';

Widget customContainerLatter(int index) {
  return Container(
    margin: const EdgeInsets.all(10),
    alignment: Alignment.centerLeft,

    height: 60,
    width: 60,
    decoration: BoxDecoration(
        border: Border.all(color: blueBorderColor, width: 3),
        borderRadius: BorderRadius.circular(100),
        color: progressBarColor,
        image: DecorationImage(
            image: index == 0
                ? const AssetImage("assets/images/letter1.png")
                : const AssetImage("assets/images/lock.png"),
            fit: index == 0 ? null : BoxFit.cover)),
  );
}
