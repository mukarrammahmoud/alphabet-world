import 'package:flutter/material.dart';
import 'custom_nipclipper.dart';

class LowerNipMessage extends StatelessWidget {
  final String message;

  const LowerNipMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LowerNipMessageClipperSender(), // Use custom clipper here
      child: Container(
        height: 115,
        width: 115,
        decoration: BoxDecoration(
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
