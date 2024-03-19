import 'package:flutter/material.dart';
import '../color.dart';

class CustomPopup extends StatelessWidget {
  late VoidCallback? onClose;

  CustomPopup({this.onClose});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // The background page content
        Container(
          color: Colors.black54,
          child: Center(
            child: Text(
              'Page Content',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        // The popup
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Custom Popup',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text('Popup content goes here...'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (onClose != null) {
                      onClose!();
                    }
                  },
                  child: Text('Close'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
