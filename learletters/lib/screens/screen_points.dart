import 'package:flutter/material.dart';
import 'package:learletters/color.dart';

import 'package:learletters/components/custom_container.dart';
import 'package:learletters/components/custom_container_exersize.dart';

import 'package:learletters/components/custom_text.dart';
import 'package:learletters/screens/home_screen1.dart';
import 'package:learletters/screens/levels.dart';

import '../components/custom_container_latter.dart';
import '../components/custom_message.dart';

class ScreenPoints extends StatefulWidget {
  const ScreenPoints({super.key, required this.pathImage});

  @override
  State<ScreenPoints> createState() => _ScreenPointsState();
  final String pathImage;
}

class _ScreenPointsState extends State<ScreenPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueColor,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 90,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: blueBorderColor, width: 2),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer("1/29"),
                          customText(" الــــحــروف",
                              txtColor: blueColor, fontSizee: 18),
                          customContainer("30"),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer("10"),
                          customText("المستويات",
                              txtColor: blueColor, fontSizee: 18),
                          customContainer("18"),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      Container(
                          height: 80,
                          child: ListView.builder(
                            reverse: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 28,
                            itemBuilder: (context, index) {
                              return customContainerLatter(index);
                            },
                          ))
                    ],
                  ),
                ),
                Positioned(
                  right: 2,
                  top: -10,
                  child: Image.asset(
                    widget.pathImage,
                    height: 100,
                  ),
                ),
                Positioned(
                    right: 70,
                    top: -80,
                    child: customMessage("لنرى مالذي انجزته")),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customContEx("assets/images/c.png", "وصل",
                    (context) => const LevelsScreen(), context),
                customContEx("assets/images/lock.png", "", null, context),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customContEx("assets/images/lock.png", "", null, context),
                customContEx("assets/images/lock.png", "", null, context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
