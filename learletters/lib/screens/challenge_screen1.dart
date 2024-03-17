import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learletters/components/custom_button.dart';
import 'package:learletters/components/custom_message.dart';
import '../../color.dart';

import '../../components/custom_header.dart';

import '../../components/custom_progress_bar.dart';
import 'challenge_screen2.dart';

class FirstChallengeScreen extends StatefulWidget {
  const FirstChallengeScreen({Key? key}) : super(key: key);

  @override
  _FirstChallengeScreenState createState() => _FirstChallengeScreenState();
}

class _FirstChallengeScreenState extends State<FirstChallengeScreen> {
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
                navigateTo: (context) => FirstChallengeScreen(),
              ),
              SizedBox(
                height: 98,
              ),
              SizedBox(
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomProgressBar(progress: 20),
                    Column(
                      children: [
                        Row(
                          children: [
                            
                            customMessage("يا ترى ماهو شكل الحرف الذي تسمعه"),
                            Image.asset("assets/images/majed.png",
                                height: 188, width: 121),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 100),
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.topRight,
                                children: [
                                  Positioned(
                                    top: -22,
                                    right: 20,
                                    child: Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 50,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2.0
                                          ..color = lightBlueColor,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/bigmicrophonep.png",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: lightBlueBorderColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "أ",
                                  style: TextStyle(
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 2.0
                                      ..color = Colors.red,
                                  ),
                                ),
                              ),
                              height: 55,
                              width: 50,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomButton(
                  navigateTo: (context) => SecondChallengeScreen(),
                  backgroundColor: lightBlueColor,
                  textBorderColor: lightBlackBorderColor,
                  title: "التالي")
            ],
          ),
        ),
      )),
    );
  }
}
