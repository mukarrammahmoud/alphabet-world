import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learletters/color.dart';

class Latters extends StatefulWidget {
  const Latters({super.key});

  @override
  State<Latters> createState() => _LattersState();
}

class _LattersState extends State<Latters> {
  List genLatterRandom(String target) {
    List alllatter = [
      'ا',
      'ب',
      'ت',
      'ث',
      'ج',
      'ح',
      'خ',
      'د',
      'ذ',
      'ر',
      'ز',
      'س',
      'ش',
      'ص',
      'ض',
      'ط',
      'ظ',
      'ع',
      'غ',
      'ف',
      'ق',
      'ك',
      'ل',
      'م',
      'ن',
      'ه',
      'و',
      'ي',
      'ء',
    ];
    var randomlatter = [];
    for (var latter in target.characters) {
      if (!randomlatter.contains(latter)) {
        randomlatter.add(latter);
      }
    }
    while (randomlatter.length < 6) {
      var randomindex = Random().nextInt(alllatter.length);
      var ralat = alllatter[randomindex];
      if (!randomlatter.contains(ralat)) {
        randomlatter.add(ralat);
        print(randomlatter);
      }
    }
    randomlatter.shuffle();
    return randomlatter;
  }

  var result = [];
  @override
  void initState() {
    result = genLatterRandom("ارنب");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: result.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  margin: EdgeInsets.all(10),
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blueBorderColor),
                  child: Text(
                    "${result[index]}",
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
