import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_header.dart';
import 'home_screen2.dart';


class ThirdHomeScreen extends StatefulWidget {
  const ThirdHomeScreen({Key? key}) : super(key: key);

  @override
  _ThirdHomeScreenState createState() => _ThirdHomeScreenState();
}

class _ThirdHomeScreenState extends State<ThirdHomeScreen> {
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
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset("assets/images/rabbit.png"),
                    Positioned(
                        top: 1,
                        right: -41,
                        child: Image.asset("assets/images/haneen.png")),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                customButton(
                  context,
                  (context) => const ThirdHomeScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
