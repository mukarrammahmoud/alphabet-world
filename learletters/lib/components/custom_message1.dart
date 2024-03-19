import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class CustomMessage extends StatefulWidget {
  late Text title;
  CustomMessage({required this.title});

  @override
  _CustomMessageState createState() => _CustomMessageState();
}

class _CustomMessageState extends State<CustomMessage> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LowerNipMessageClipper(MessageType.send),
      child: Container(
        // child: Text(title.toString()),
        height: 60,
        width: 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: progressBarColor,
          border: Border.all(
            color: blueBorderColor,
          ),
        ),
      ),
    );
  }
}
