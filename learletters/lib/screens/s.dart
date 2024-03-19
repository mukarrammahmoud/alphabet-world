import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learletters/components/custom_button.dart';
import '../../color.dart';
import '../../components/custom_header.dart';
import '../../components/custom_progress_bar.dart';
import '../components/custom_message.dart';
import 'challenge_screen2.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({Key? key}) : super(key: key);

  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  int selectedletter = -1;
  List<String> letters = [
    "أ",
    "ب",
    "ت",
    "ث",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomHeader(
                navigateTo: (context) => const ChallengeScreen(),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 500,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomProgressBar(progress: 20),
                      Column(
                        children: [
                          Row(
                            children: [
                              customMessage(
                                'يا ترى ماهو شكل الحرف الذي تسمعه',
                              ),
                              Image.asset(
                                "assets/images/majed.png",
                                height: 188,
                                width: 121,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 100, top: 10),
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
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 20,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: letters.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: lightBlueBorderColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 55,
                                    width: 50,
                                    child: Center(
                                      child: Text(
                                        "$letters[index]",
                                        style: const TextStyle(
                                          color: whiteColor,
                                          fontSize: 25,
                                          shadows: [
                                            Shadow(
                                              color: lightBlackBorderColor,
                                              offset: Offset(-1, 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedletter = index;
                                    });
                                  },
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                navigateTo: (context) => const SecondChallengeScreen(),
                backgroundColor: lightBlueColor,
                textBorderColor: lightBlackBorderColor,
                title: "التالي",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
