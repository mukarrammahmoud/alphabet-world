import 'package:flutter/material.dart';
import 'package:learletters/screens/screen_choose.dart';
import 'screens/home_screen1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Blabeloo"),
      home: const ScreenChoose(),
    );
  }
}
