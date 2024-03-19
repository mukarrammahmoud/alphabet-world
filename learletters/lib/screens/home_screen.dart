import 'package:flutter/material.dart';
import 'package:learletters/color.dart';
import 'package:learletters/components/custom_text.dart';
import 'package:learletters/screens/home_screen4.dart';

import '../components/custom_container_randomletter.dart';
import '../components/custom_header.dart';
import '../components/custom_lettercolumn.dart';
import '../components/custom_message.dart';

import 'home_screen2.dart';
import 'home_screen3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeStep = 0;
  int clickCount = 3;

  @override
  void initState() {
    super.initState();
    activeStep = 0;
  }

  void goToStep(int step) {
    setState(() {
      activeStep = step;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stepper(
            currentStep: activeStep,
            elevation: 0,
            type: StepperType.horizontal,
            steps: getSteps(),
            controlsBuilder: (context, onStepContinue) {
              return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                  child: MaterialButton(
                      height: 50,
                      color: blueColor,
                      onPressed: () {
                        setState(() {
                          if (activeStep == 2) {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const FourthHomeScreen(),
                            ));
                          } else {
                            activeStep += 1;
                          }
                        });
                      },
                      child: customText("التالي")));
            },
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
            title: activeStep == 0
                ? Container(
                    child: Image.asset(
                      "assets/images/be.gif",
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  )
                : const Text(""),
            content: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/buttonbackground.png"),
                          Image.asset("assets/images/backword.png"),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    GestureDetector(
                      child: Visibility(
                        visible: clickCount == 0 ? true : false,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset("assets/images/buttonbackground.png"),
                            Image.asset("assets/images/forword.png"),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SecondHomeScreen(),
                        ));
                      },
                    ),
                  ],
                ),
                Image.asset("assets/images/ألف.png"),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topRight,
                    children: [
                      Positioned(
                        top: -25,
                        right: 5,
                        child: Text(
                          clickCount == 3 || clickCount >= 1
                              ? "$clickCount"
                              : "",
                          style: TextStyle(
                            fontSize: 40,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2.0
                              ..color = lightBlueColor,
                          ),
                        ),
                      ),
                      Image.asset("assets/images/microphone.png"),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      if (clickCount == 3 || clickCount >= 1) {
                        clickCount--;
                      }
                    });
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            isActive: activeStep >= 0),
        Step(
            title: activeStep == 1
                ? Image.asset(
                    "assets/images/be.gif",
                    fit: BoxFit.contain,
                    height: 100,
                  )
                : const Text(""),
            content: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomHeader(
                      navigateTo: (context) => const ThirdHomeScreen(),
                    ),
                    GestureDetector(
                      child: Image.asset("assets/images/letter1.png"),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            isActive: activeStep >= 1),
        Step(
            title: activeStep == 2
                ? Image.asset(
                    "assets/images/be.gif",
                    height: 100,
                    fit: BoxFit.contain,
                  )
                : const Text(""),
            content: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomHeader(
                    navigateTo: (context) => const SecondHomeScreen(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Image.asset(
                      //   "assets/images/rabbit.gif",
                      // ),
                      Positioned(
                        top: 1,
                        right: -41,
                        height: 143,
                        width: 92,
                        child: Image.asset("assets/images/majed.png"),
                      ),
                      Positioned(
                        top: -30,
                        right: 40,
                        child: Container(
                          child: customMessage(" اكتب كلمة أرنب "),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomContainerRandomLetter(
                                letter: "خ",
                              ),
                              CustomContainerRandomLetter(
                                letter: "أ",
                              ),
                              CustomContainerRandomLetter(
                                letter: "ي",
                              ),
                              CustomContainerRandomLetter(
                                letter: "ر",
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomContainerRandomLetter(
                                letter: "ن",
                              ),
                              CustomContainerRandomLetter(
                                letter: "ب",
                              ),
                              CustomContainerRandomLetter(
                                letter: "ث",
                              ),
                              CustomContainerRandomLetter(
                                letter: "ع",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            isActive: activeStep >= 2),
      ];
}
