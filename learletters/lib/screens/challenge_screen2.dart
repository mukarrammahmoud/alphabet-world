import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learletters/components/custom_button.dart';
import 'package:learletters/components/custom_message.dart';

import '../../color.dart';

import '../../components/custom_header.dart';

import '../../components/custom_progress_bar.dart';

class SecondChallengeScreen extends StatefulWidget {
  const SecondChallengeScreen({Key? key}) : super(key: key);

  @override
  _SecondChallengeScreenState createState() => _SecondChallengeScreenState();
}

class _SecondChallengeScreenState extends State<SecondChallengeScreen> {
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
                navigateTo: (context) => SecondChallengeScreen(),
              ),
              SizedBox(
                height: 395,
                child: Row(
                  children: [
                    CustomProgressBar(progress: 20),
                    Column(
                      children: [
                        //
                        customMessage("يا ترى ماهو شكل الحرف الذي تسمعه"),
                        Image.asset("assets/images/majed.png"),
                        Image.asset("assets/images/microphone.png"),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: lightBlueBorderColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text("أ"),
                            )
                          ],
                        ),
                        CustomButton(
                            navigateTo: (context) => SecondChallengeScreen(),
                            backgroundColor: lightBlueColor,
                            textBorderColor: lightBlackBorderColor,
                            title: "التالي")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
