import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:learletters/color.dart';

class CustomProgressBar extends StatelessWidget {
  late double progress;

  CustomProgressBar({required this.progress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: FAProgressBar(
        currentValue: progress,
        maxValue: 100,
        size: 25,

        animatedDuration: Duration(milliseconds: 500),
        direction: Axis.vertical,
        verticalDirection: VerticalDirection.up,
        backgroundColor: whiteColor,
        border: Border.all(
          color: lightBlueBorderColor,
          width: 1,
        ),
        // progressColor: progressBarColor,
        // progressGradient: LinearGradient(
        //   colors: [lightBlueBorderColor, progressBarColor], // Two colors gradient
        //   begin: Alignment.centerLeft,
        //   end: Alignment.centerRight,
        progressGradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.green,
            Colors.yellow,
            Colors.orange,
            Colors.red,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [1, 2, 1, 1, 1],
          tileMode: TileMode.repeated,
          transform: GradientRotation(0.5), // Rotate the gradient
        ),
      ),
    );
  }
}
