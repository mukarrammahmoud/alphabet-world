import 'package:flutter/material.dart';
import 'package:learletters/color.dart';

import 'package:learletters/components/custom_text.dart';
import 'package:learletters/screens/screen_choose.dart';

class StipperScreen extends StatefulWidget {
  const StipperScreen({super.key});

  @override
  State<StipperScreen> createState() => _StipperScreenState();
}

class _StipperScreenState extends State<StipperScreen> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                            builder: (context) => ScreenChoose(),
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
            content: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/be.gif',
                      ),
                      customText("تعرف علينا", txtColor: pinkColor),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, right: 10),
                      ),
                      customText(
                          "عالم الحروف تطبيق تعليمي تفاعلي يهدف لدمج التعلم بالترفيه",
                          txtColor: blueColor)
                    ]),
              ),
            ]),
            isActive: activeStep >= 0),
        Step(
            title: activeStep == 1
                ? Image.asset(
                    "assets/images/be.gif",
                    fit: BoxFit.contain,
                    height: 100,
                  )
                : const Text(""),
            content: Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/dog.gif',
                        height: 120,
                      ),
                    ),
                    customText("  مالذي يميزنا ؟", txtColor: pinkColor),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 10),
                    ),
                    customText(
                        "تطوير مهارات التعرف على الحروف الأبجدية بطريقة ممتعة وتفاعلية لزرع حب التعلم",
                        txtColor: blueColor)
                  ]),
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
            content: Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/haneen.png',
                            height: 130,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/majed.png',
                            height: 130,
                          ),
                        ),
                      ],
                    ),
                    customText(" تحب المغامرة ؟", txtColor: pinkColor),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 10),
                    ),
                    customText(
                        "شارك في مغامرة التعرف على الحروف الأبجدية مع ماجد وحنين",
                        txtColor: blueColor)
                  ]),
            ),
            isActive: activeStep >= 2),
      ];
 
}


