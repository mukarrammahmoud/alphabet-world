import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learletters/components/custom_button.dart';

import 'package:learletters/screens/screen.dart';
import '../components/custom_clipper.dart';
import '../components/custom_text.dart';
import '../color.dart';

class ScreenChoose extends StatefulWidget {
  const ScreenChoose({super.key});

  @override
  State<ScreenChoose> createState() => _ScreenChooseState();
}

class _ScreenChooseState extends State<ScreenChoose> {
  Color hanenColor = pinkColor;
  Color hanenColorBorder = pinkColor;
  Color hanenColorContainer = pinkColor;
  Color majedColor = whiteColor.withOpacity(0.3);
  Color majedColorBorder = blueColor.withOpacity(0.3);
  Color majedColorContainer = blueColor.withOpacity(0.1);
  bool visabil = true;
  double heightHanen = 310;
  double widthHanen = 310;
  double heightMaged = 300;
  double widthMaged = 300;

  Color btnColor = pinkColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          customText("اختر شخصيتك", txtColor: btnColor),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Expanded(
                    child: ClipPath(
                      clipper: MyCustomClipper(),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            hanenColorContainer = pinkColor;
                            majedColorContainer =
                                majedColorContainer.withOpacity(0.1);
                            majedColorBorder =
                                majedColorBorder.withOpacity(0.3);
                            visabil = true;
                            heightMaged = 300;
                            widthMaged = 300;
                            heightHanen = 310;
                            widthHanen = 310;
                            btnColor = pinkColor;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          curve: Curves.linear,
                          width: widthHanen,
                          height: heightHanen,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: hanenColorBorder, width: 6),
                              color: hanenColorContainer,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Visibility(
                                  visible: visabil == true ? true : false,
                                  child: Image.asset(
                                    "assets/images/haneen.png",
                                    color: null,
                                    height: 180,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 40,
                                right: 80,
                                child: Visibility(
                                    visible: visabil == true ? true : false,
                                    child: customText("حنين")),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Transform.rotate(
                      angle: pi,
                      child: ClipPath(
                        clipper: MyCustomClipper(),
                        child: InkWell(
                          onTap: () {
                            {
                              setState(() {
                                hanenColorContainer =
                                    hanenColorContainer.withOpacity(0.1);
                                majedColorContainer = blueColor;
                                majedColorBorder = blueBorderColor;
                                visabil = false;
                                heightHanen = 300;
                                widthHanen = 300;
                                heightMaged = 310;
                                widthMaged = 310;
                                btnColor = blueBorderColor;
                                hanenColorBorder =
                                    hanenColorBorder.withOpacity(0.2);
                              });
                            }
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: majedColorBorder, width: 6),
                                color: majedColorContainer,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            margin: EdgeInsets.all(10),
                            width: widthMaged,
                            height: heightMaged,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Transform.rotate(
                                    angle: pi,
                                    child: Visibility(
                                      visible: visabil == true ? false : true,
                                      child: Image.asset(
                                        "assets/images/majed.png",
                                        height: 180,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 40,
                                    right: 80,
                                    child: Transform.rotate(
                                        angle: pi,
                                        child: Visibility(
                                            visible:
                                                visabil == true ? false : true,
                                            child: customText("ماجد")))),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ])
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: CustomButton(
              backgroundColor: btnColor,
              textBorderColor: lightBlackBorderColor,
              title: "اختيار",
              navigateTo: (context) => Levels(),
            ),
          )
        ],
      ),
    ));
  }
}
