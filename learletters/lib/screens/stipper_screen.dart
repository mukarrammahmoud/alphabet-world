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
  // Widget mybottom() {
  //   return Container(
  //     height: 80,
  //     width: 100,
  //     decoration: const BoxDecoration(
  //         gradient: LinearGradient(
  //             colors: [
  //           Colors.blue,
  //           Color.fromARGB(255, 14, 106, 182),
  //         ],
  //             begin: AlignmentDirectional.topStart,
  //             end: AlignmentDirectional.bottomEnd)),
  //   );
  // }
}

// import 'package:easy_stepper/easy_stepper.dart';
// import 'package:flutter/material.dart';
// import 'package:learletters/components/custom_text.dart';

// class StipperScreen extends StatefulWidget {
//   const StipperScreen({super.key});

//   @override
//   State<StipperScreen> createState() => _StipperScreenState();
// }

// class _StipperScreenState extends State<StipperScreen> {
//   int activeStep = 0;
//   double progress = 0.2;
//   void increaseProgress() {
//     if (progress < 1) {
//       setState(() => progress += 0.2);
//     } else {
//       setState(() => progress = 0);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           EasyStepper(
//              onStepReached: (index) => setState(() => activeStep = index),
//             loadingAnimation: "hello",
//             activeStep: activeStep,
//             lineStyle: const LineStyle(
//               lineLength: 50,
//               lineType: LineType.normal,
//               lineThickness: 3,
//               lineSpace: 1,
//               lineWidth: 10,
//               unreachedLineType: LineType.dashed,
//             ),
//             stepShape: StepShape.rRectangle,
//             stepBorderRadius: 15,
//             borderThickness: 2,
//             internalPadding: 10,
//             padding: const EdgeInsetsDirectional.symmetric(
//               horizontal: 30,
//               vertical: 20,
//             ),
//             stepRadius: 28,
//             finishedStepBorderColor: Colors.deepOrange,
//             finishedStepTextColor: Colors.deepOrange,
//             finishedStepBackgroundColor: Colors.deepOrange,
//             activeStepIconColor: Colors.deepOrange,
//             showLoadingAnimation: false,
//             steps: [
//               EasyStep(
//                 customStep: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Opacity(
//                       opacity: activeStep >= 0 ? 1 : 0.3, child: Text("1")),
//                 ),
//                 customTitle: Image.asset(
//                   'assets/images/be.gif',
//                   height: 100,
//                 ),
//               ),
//               EasyStep(
//                 customStep: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Opacity(
//                       opacity: activeStep >= 0 ? 1 : 0.3, child: Text("1")),
//                 ),
//                 customTitle: Image.asset(
//                   'assets/images/be.gif',
//                   height: 100,
//                 ),
//               ),
//               EasyStep(
//                 customStep: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Opacity(
//                       opacity: activeStep >= 0 ? 1 : 0.3, child: Text("1")),
//                 ),
//                 customTitle: Image.asset(
//                   'assets/images/be.gif',
//                   height: 100,
//                 ),
//               ),
//             ],
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 increaseProgress();
//                 setState(() {});
//               },
//               child: customText("next"))
//         ],
//       )),
//     );
//   }
// }
