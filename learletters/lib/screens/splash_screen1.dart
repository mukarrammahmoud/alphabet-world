import 'package:flutter/material.dart';
import 'dart:async';

import 'package:learletters/screens/home_screen1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Offset> _topAnimation;
  late Animation<Offset> _rightAnimation;
  late Animation<Offset> _leftAnimation;
  late Animation<Offset> _bottomAnimation;
  int _currentImageIndex = 1;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => FirstHomeScreen()));
    });

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _topAnimation = Tween<Offset>(
      begin: Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _rightAnimation = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _leftAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _bottomAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _startImageAnimation();
  }

  void _startImageAnimation() {
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _currentImageIndex++;
          if (_currentImageIndex < 9) {
            _controller.reset();
            _controller.forward();
            _startImageAnimation();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            if (_currentImageIndex == 1)
              SlideTransition(
                position: _leftAnimation,
                child:
                    Image.asset('assets/images/image$_currentImageIndex.png'),
              ),
            if (_currentImageIndex == 2)
              SlideTransition(
                position: _rightAnimation,
                child:
                    Image.asset('assets/images/image$_currentImageIndex.png'),
              ),
            if (_currentImageIndex == 3)
              SlideTransition(
                position: _topAnimation,
                child:
                    Image.asset('assets/images/image$_currentImageIndex.png'),
              ),
            if (_currentImageIndex == 4)
              SlideTransition(
                position: _bottomAnimation,
                child:
                    Image.asset('assets/images/image$_currentImageIndex.png'),
              ),
            if (_currentImageIndex == 5)
              SlideTransition(
                position: _bottomAnimation,
                child:
                    Image.asset('assets/images/image$_currentImageIndex.png'),
              ),
            if (_currentImageIndex == 6)
              SlideTransition(
                position: _topAnimation,
                child:
                    Image.asset('assets/images/image$_currentImageIndex.png'),
              ),
            if (_currentImageIndex == 7)
              SlideTransition(
                position: _bottomAnimation,
                child:
                    Image.asset('assets/images/image$_currentImageIndex.png'),
              ),
            if (_currentImageIndex == 8)
              SlideTransition(
                position: _bottomAnimation,
                child:
                    Image.asset('assets/images/image$_currentImageIndex.png'),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
