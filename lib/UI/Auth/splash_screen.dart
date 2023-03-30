import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_android/Bidings/application_biding.dart';
import 'package:social_android/UI/Auth/login_screen.dart';
import 'package:social_android/UI/system_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000),
        () => Get.to(LoginScreen(), binding: ApplicationBiding()));
    Timer(const Duration(milliseconds: 900), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AllcolorApp.backgroundColorApp,
      child: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 1500),
          opacity: _isVisible ? 1.0 : 0,
          child: const Text(
            'C K C S',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(7, 7),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 91, 91, 91),
                ),
                Shadow(
                  offset: Offset(5, 5),
                  blurRadius: 8.0,
                  color: Color.fromARGB(124, 56, 56, 255),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
