import 'package:flutter/material.dart';

import '../../components/custom_header.dart';
import 'home_screen1.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomHeader(
          navigateTo: (context) => FirstHomeScreen(),
        ),
      ),
    );
  }
}
