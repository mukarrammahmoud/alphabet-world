
import 'package:flutter/material.dart';

import '../color.dart';

Widget customContEx(
    String pathImage, String titleText, WidgetBuilder? navigateTo,BuildContext context) {
  return InkWell(
    onTap: () {
      if (navigateTo != null) {
        Navigator.of(context ).push(MaterialPageRoute(
          builder: navigateTo,
        ));
      }
    },
    child: Container(
      padding: const EdgeInsets.all(20),
      width: 120,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              pathImage,
              height: 60,
            ),
          ),
          Text(titleText),
        ],
      ),
    ),
  );
}
