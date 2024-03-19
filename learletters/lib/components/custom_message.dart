// ignore_for_file: prefer_const_constructors

import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

import '../color.dart';

Widget customMessage(String title) {
  return ClipPath(
    clipper: LowerNipMessageClipper(MessageType.send),
    child: Container(
      height: 88,
      width: 184,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: blackColor,
            offset: Offset(0, 7),
            blurRadius: 4,
          )
        ],
        color: progressBarColor,
        border: Border.all(
          color: blueBorderColor,
        ),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(color: whiteColor, fontSize: 17, shadows: const [
            Shadow(color: blueBorderColor, offset: Offset(-1, 1))
          ]),
        ),
      ),
    ),
  );
}
