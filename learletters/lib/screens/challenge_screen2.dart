import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learletters/components/custom_button.dart';
import '../../color.dart';
import '../../components/custom_header.dart';
import '../../components/custom_progress_bar.dart';
import '../components/custom_message.dart';
import 'challenge_screen3.dart';

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
                height: 10,
              ),
              SizedBox(
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomProgressBar(progress: 40),
                    Column(
                      children: [
                        Row(
                          children: [
                            customMessage(
                              'يا ترى ماهو شكل الحرف الذي تسمعه',
                            ),
                            Image.asset("assets/images/majed.png",
                                height: 188, width: 121),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomButton(
                  navigateTo: (context) => ThirdChallengeScreen(),
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
