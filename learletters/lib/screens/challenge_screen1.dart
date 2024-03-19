import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learletters/components/custom_button.dart';
import '../../color.dart';
import '../../components/custom_header.dart';
import '../../components/custom_progress_bar.dart';
import '../components/custom_message.dart';
import 'challenge_screen2.dart';

class FirstChallengeScreen extends StatefulWidget {
  const FirstChallengeScreen({Key? key}) : super(key: key);

  @override
  _FirstChallengeScreenState createState() => _FirstChallengeScreenState();
}

class _FirstChallengeScreenState extends State<FirstChallengeScreen> {
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
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomHeader(
                navigateTo: (context) => FirstChallengeScreen(),
              ),
              SizedBox(
                height: 50,
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
                            customMessage(
                              'يا ترى ماهو شكل الحرف الذي تسمعه',
                            ),
                            Image.asset("assets/images/majed.png",
                                height: 188, width: 121),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 100, top: 10),
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
                        SizedBox(
                          height: 45,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: SizedBox(
                              height: 60,
                              width: 300,
                              child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      width: 30,
                                    );
                                  },
                                  scrollDirection: Axis.horizontal,
                                  itemCount: letters.length,
                                  itemBuilder: ((context, index) {
                                    return GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: lightBlueBorderColor,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            "${letters[index]}",
                                            style: TextStyle(
                                                color: whiteColor,
                                                fontSize: 25,
                                                shadows: [
                                                  Shadow(
                                                      color:
                                                          lightBlackBorderColor,
                                                      offset: Offset(-1, 1))
                                                ]),
                                          ),
                                        ),
                                        height: 55,
                                        width: 50,
                                      ),
                                      onTap: () {
                                        selectedletter = index;
                                      },
                                    );
                                  })),
                            ),
                          ),
                        ),

                        // SizedBox(
                        //   height: 60,
                        //   child: ListView.builder(
                        //       scrollDirection: Axis.horizontal,
                        //       itemCount: letters.length,
                        //       itemBuilder: ((context, index) {
                        //         return GestureDetector(
                        //           child: Container(
                        //             decoration: BoxDecoration(
                        //                 color: lightBlueBorderColor,
                        //                 borderRadius:
                        //                     BorderRadius.circular(10)),
                        //             child: Center(
                        //               child: Text(
                        //                 "$letters[index]",
                        //                 style: TextStyle(
                        //                     color: whiteColor,
                        //                     fontSize: 25,
                        //                     shadows: [
                        //                       Shadow(
                        //                           color: lightBlackBorderColor,
                        //                           offset: Offset(-1, 1))
                        //                     ]),
                        //               ),
                        //             ),
                        //             height: 55,
                        //             width: 50,
                        //           ),
                        //           onTap: () {
                        //             selectedletter = index;
                        //           },
                        //         );
                        //       })),
                        // )
                        // Row(
                        //   children: [
                        //     Container(
                        //       decoration: BoxDecoration(
                        //           color: lightBlueBorderColor,
                        //           borderRadius: BorderRadius.circular(10)),
                        //       child: Center(
                        //         child: Text(
                        //           "أ",
                        //           style: TextStyle(
                        //               color: whiteColor,
                        //               fontSize: 25,
                        //               shadows: [
                        //                 Shadow(
                        //                     color: lightBlackBorderColor,
                        //                     offset: Offset(-1, 1))
                        //               ]),
                        //         ),
                        //       ),
                        //       height: 55,
                        //       width: 50,
                        //     )
                        //   ],
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
