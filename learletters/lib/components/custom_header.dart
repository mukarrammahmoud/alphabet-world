import 'package:flutter/material.dart';

class CustomHeader extends StatefulWidget {
  final WidgetBuilder? navigateTo;
  const CustomHeader({super.key, required this.navigateTo});

  @override
  // ignore: library_private_types_in_public_api
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
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/buttonbackground.png"),
                Image.asset("assets/images/backword.png"),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          GestureDetector(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/buttonbackground.png"),
                Image.asset("assets/images/forword.png"),
              ],
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
