import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learletters/components/custom_button.dart';
import '../../color.dart';
import '../../components/custom_header.dart';
import '../../components/custom_progress_bar.dart';
import '../components/custom_lettercolumn.dart';
import '../components/custom_message.dart';

import 'challenge_screen4.dart';

class ThirdChallengeScreen extends StatefulWidget {
  const ThirdChallengeScreen({Key? key}) : super(key: key);

  @override
  _ThirdChallengeScreenState createState() => _ThirdChallengeScreenState();
}

class _ThirdChallengeScreenState extends State<ThirdChallengeScreen> {
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
                navigateTo: (context) => ThirdChallengeScreen(),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomProgressBar(progress: 60),
                    Column(
                      children: [
                        Row(
                          children: [
                            customMessage(
                              'لقد فقدت احد احرف هذه الكلمة ساعدني في العثور عليه',
                            ),
                            Image.asset("assets/images/majed.png",
                                height: 188, width: 121),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          "assets/images/rabbit.gif",
                          width: 256,
                          height: 192,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomLetterColumn(text: ""),
                            CustomLetterColumn(text: "ر"),
                            CustomLetterColumn(text: "ن"),
                            CustomLetterColumn(text: "ب"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomButton(
                  navigateTo: (context) => FourthCallengeScreen(),
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
