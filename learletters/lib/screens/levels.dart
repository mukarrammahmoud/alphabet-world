import 'package:flutter/material.dart';
import 'package:learletters/color.dart';

import 'package:learletters/components/custom_text.dart';

import '../components/custom_progress_bar.dart';
import 'home_screen1.dart';

class LevelsScreen extends StatefulWidget {
  const LevelsScreen({super.key});

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  int selecteIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Vector.png"),
                fit: BoxFit.fitWidth)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListView(
                // reverse: true,
                itemExtent: 150,
                children: [
                  lock(1, "المرحلة الأولى"),
                  lock(2, "المرحلة الثانية"),
                  lock(3, "المرحلة الثالة"),
                  lock(4, "المرحلة الرابعة"),
                  lock(5, "المرحلة الخامسة"),
                  lock(6, "المرحلة السادسة"),
                  lock(7, "المرحلة السابعة"),
                  lock(8, "المرحلة الثامنة"),
                  lock(9, "المرحلة التاسعة"),
                  lock(10, "المرحلة العاشرة"),
                  lock(11, "المرحلة 11"),
                  lock(12, "المرحلة 12"),
                  lock(13, "المرحلة 13"),
                  lock(14, "المرحلة 14"),
                  lock(15, "المرحلة 15"),
                  lock(16, "المرحلة 16"),
                  lock(17, "المرحلة 17"),
                  lock(18, "المرحلة 18"),
                  lock(19, "المرحلة 19"),
                  lock(20, "المرحلة 20"),
                  lock(21, "المرحلة 21"),
                  lock(22, "المرحلة 22"),
                  lock(23, "المرحلة 23"),
                  lock(24, "المرحلة 24"),
                  lock(25, "المرحلة 25"),
                  lock(26, "المرحلة 26"),
                  lock(27, "المرحلة 27"),
                  lock(28, "المرحلة 28"),
                ],
              ),
            ),
            Positioned(
              height: 250,
              bottom: 80,
              left: MediaQuery.of(context).size.width / 15,
              child: CustomProgressBar(progress: 20),
            ),
            Positioned(
              left: 10,
              top: 90,
              child: customText("مرحبا بك ماجد", txtColor: blueBorderColor),
            ),
            Positioned(
                width: MediaQuery.of(context).size.width / 2.6,
                bottom: -20,
                left: MediaQuery.of(context).size.width / 3,
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          child: bottomContainer("assets/images/Home.png")),
                      Positioned(
                        left: 50,
                        child: bottomContainer("assets/images/Gift.png"),
                      ),
                      Positioned(
                          left: 100,
                          child: bottomContainer("assets/images/Services.png")),
                    ],
                  ),
                )),
          ],
        ),
      ),
    ));
  }

  Container bottomContainer(String pathImage) {
    return Container(
      height: 45,
      width: 45,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: progressBarColor,
      ),
      child: Image.asset(pathImage),
    );
  }

  Stack lock(int index, String title) {
    return Stack(clipBehavior: Clip.none, children: [
      Positioned(
        right: index % 2 == 0 ? -80 : 30,
        child: Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 170, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(color: blueColor, width: 4),
            image: const DecorationImage(
              image: AssetImage("assets/images/Vector2.png"),
            ),
            color: progressBarColor,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      Positioned(
        right: index % 2 == 0 ? 10 : 120,
        child:
            customText(title, txtColor: lightBlackBorderColor, fontSizee: 18),
      ),
      Visibility(
        visible: index == 1 ? true : false,
        child: Positioned(
          right: index == 1 ? 253 : 60,
          bottom: index == 1 ? 90 : 60,
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FirstHomeScreen(),
            )),
            child: Container(
              alignment: Alignment.center,
              height: 35,
              width: 70,
              decoration: BoxDecoration(
                color: blueColor,
                border: Border.all(color: blackColor, width: 1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: customText("ابدأ", fontSizee: 15),
            ),
          ),
        ),
      ),
    ]);
  }
}
