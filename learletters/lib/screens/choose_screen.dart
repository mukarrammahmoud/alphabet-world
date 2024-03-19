import 'dart:math';
import 'package:flutter/material.dart';
import 'package:learletters/components/custom_button.dart';
import '../../color.dart';
import '../../components/custom_clipper.dart';
import '../../components/custom_text.dart';
import 'home_screen1.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  changeChoosing() {
    if (hanenColor == pinkColor) {
      hanenColor = pinkColor;
      hanenColorBorder = pinkColor;
      hanenColorContainer = pinkColor.withOpacity(0.7);
      majedColor = whiteColor.withOpacity(0.3);
      majedColorBorder = blueColor.withOpacity(0.3);
      majedColorContainer = blueColor.withOpacity(0.3);
      visabil = true;
    } else {
      hanenColor = whiteColor.withOpacity(0.3);
      hanenColorBorder = pinkColor.withOpacity(0.3);
      hanenColorContainer = pinkColor.withOpacity(0.3);
      majedColor = Colors.transparent;
      majedColorBorder = blueColor.withOpacity(0.7);
      majedColorContainer = blueColor.withOpacity(0.7);
      visabil = true;
    }
  }

  Color hanenColor = pinkColor;
  Color hanenColorBorder = pinkColor;
  Color hanenColorContainer = pinkColor.withOpacity(0.7);
  Color majedColor = whiteColor.withOpacity(0.3);
  Color majedColorBorder = blueColor.withOpacity(0.3);
  Color majedColorContainer = blueColor.withOpacity(0.3);
  bool visabil = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          customText("اختر شخصيتك", txtColor: pinkColor),
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
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: hanenColorBorder, width: 6),
                            color: hanenColorContainer,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Image.asset(
                                "assets/images/haneen.png",
                                height: 180,
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
                  Expanded(
                    child: Transform.rotate(
                      angle: pi,
                      child: ClipPath(
                        clipper: MyCustomClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: majedColorBorder, width: 6),
                              color: majedColorContainer,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          margin: EdgeInsets.all(10),
                          width: 300,
                          height: 300,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Transform.rotate(
                                  angle: pi,
                                  child: Image.asset(
                                    color: majedColor,
                                    "assets/images/majed.png",
                                    height: 180,
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
                ])
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: CustomButton(
              textBorderColor: pinkColor,
              backgroundColor: hanenColor,
              title: "اختيار",
              navigateTo: (context) => FirstHomeScreen(),
            ),
          )
        ],
      ),
    ));
  }
}
