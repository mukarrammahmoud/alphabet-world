import 'package:flutter/material.dart';
import '../color.dart';

class CustomButton extends StatelessWidget {
  late WidgetBuilder? navigateTo;
  late BuildContext context;
  late Color backgroundColor;
  late Color textBorderColor;
  late String title;

  CustomButton(
      {this.navigateTo,
      required this.backgroundColor,
      required this.textBorderColor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: backgroundColor,
          // height: 68.38,
          // minWidth: 166.4,
          height: MediaQuery.of(context).size.height / 10.5,
          minWidth: MediaQuery.of(context).size.width / 2.5,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: navigateTo!,
            ));
          },
          child: Text(
            title,
            style: TextStyle(color: whiteColor, fontSize: 25, shadows: [
              Shadow(color: textBorderColor, offset: Offset(-1, 1))
            ]),
          ),
        ),
      ],
    );
  }
}
