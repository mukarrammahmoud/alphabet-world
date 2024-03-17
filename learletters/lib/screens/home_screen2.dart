import 'package:flutter/material.dart';

import '../color.dart';
import 'home_screen3.dart';
import '../components/custom_button.dart';
import '../components/custom_header.dart';

class SecondHomeScreen extends StatefulWidget {
  const SecondHomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SecondHomeScreenState createState() => _SecondHomeScreenState();
}

class _SecondHomeScreenState extends State<SecondHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomHeader(
                  navigateTo: (context) => const ThirdHomeScreen(),
                ),
                Image.asset("assets/images/letter1.png"),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  backgroundColor: lightBlueColor,
                  textBorderColor: lightBlackBorderColor,
                  navigateTo: (context) => const ThirdHomeScreen(),
                  title: 'التالي',
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
