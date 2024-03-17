// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../color.dart';
import '../components/custom_button.dart';
import '../components/custom_header.dart';

import 'home_screen2.dart';

class FirstHomeScreen extends StatefulWidget {
  const FirstHomeScreen({Key? key}) : super(key: key);

  @override
  _FirstHomeScreenState createState() => _FirstHomeScreenState();
}

class _FirstHomeScreenState extends State<FirstHomeScreen> {
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
                  navigateTo: (context) => const SecondHomeScreen(),
                ),
                Image.asset("assets/images/ألف.png"),
                const SizedBox(
                  height: 15,
                ),
                Image.asset("assets/images/microphone.png"),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  backgroundColor: lightBlueColor,
                  textBorderColor: lightBlackBorderColor,
                  navigateTo: (context) => const SecondHomeScreen(),
                  title: 'التالي',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
