import 'package:flutter/material.dart';
import 'package:learletters/color.dart';

class LowerNipMessageClipperSender extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 30); // Start at the bottom-left
    path.quadraticBezierTo(
        0, size.height, 30, size.height); // Bottom-left corner
    path.lineTo(size.width - 30, size.height); // Bottom edge
    path.quadraticBezierTo(size.width, size.height, size.width,
        size.height - 30); // Bottom-right corner
    path.lineTo(size.width, 0); // Top-right corner
    path.lineTo(0, 0); // Top-left corner
    path.close(); // Close the path to form a closed shape
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class LowerNipMessageSender extends StatelessWidget {
  final String message;

  const LowerNipMessageSender({Key? key, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LowerNipMessageClipperSender(),
      child: Container(
        height: 115,
        width: 115,
        decoration: BoxDecoration(
            color: lightBlueClipperColor,
            boxShadow: [
              BoxShadow(
                color: blackColor,
                offset: Offset(0, 7),
                blurRadius: 4,
              )
            ],
            border: Border.all(
              color: blueColor,
            )),
        padding: EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(color: Colors.white, shadows: [
            Shadow(color: lightBlueBorderColor, offset: Offset(-1, 1))
          ]),
        ),
      ),
    );
  }
}
