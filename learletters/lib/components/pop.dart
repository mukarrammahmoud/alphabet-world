import 'package:flutter/material.dart';

class PopupOverlayExample extends StatefulWidget {
  @override
  _PopupOverlayExampleState createState() => _PopupOverlayExampleState();
}

class _PopupOverlayExampleState extends State<PopupOverlayExample> {
  bool _isPopupVisible = false;

  void _togglePopupVisibility() {
    setState(() {
      _isPopupVisible = !_isPopupVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Page content
        Center(
          child: ElevatedButton(
            onPressed: _togglePopupVisibility,
            child: Text('Show Popup'),
          ),
        ),
        // Popup overlay
        if (_isPopupVisible)
          GestureDetector(
            onTap: _togglePopupVisibility,
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Popup Content',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Additional content goes here...'),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
