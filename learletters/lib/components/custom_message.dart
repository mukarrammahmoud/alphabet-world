import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

import '../color.dart';

Widget customMessage(String title) {
  return ClipPath(
    clipper: LowerNipMessageClipper(MessageType.send),
    child: Container(
      height: 60,
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: progressBarColor,
        border: Border.all(
          color: blueBorderColor,
        ),
      ),
      child: Text(title),
    ),
  );
}
