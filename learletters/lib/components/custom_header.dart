import 'package:flutter/material.dart';

class CustomHeader extends StatefulWidget {
  late WidgetBuilder? navigateTo;
  CustomHeader({required this.navigateTo});

  @override
  _CustomHeaderState createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Stack(
              children: [
                Image.asset("assets/images/buttonbackground.png"),
                Image.asset("assets/images/backword.png"),
              ],
              alignment: Alignment.center,
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          GestureDetector(
            child: Stack(
              children: [
                Image.asset("assets/images/buttonbackground.png"),
                Image.asset("assets/images/forword.png"),
              ],
              alignment: Alignment.center,
            ),
            onTap: () {
              if (widget.navigateTo != null) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: widget.navigateTo!,
                ));
              }
            },
          ),
        ],
      ),
    );
  }
}
