import 'dart:async';
import 'package:flutter/material.dart';
import 'package:staunting_apps/screen/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var durtion = const Duration(seconds: 5);
    return Timer(durtion, loginRoute);
  }

  loginRoute() async {
    var tes = true;
    if (tes == true) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      backgroundColor: const Color(0xff1AACAC),
      body: Center(
        child: Image.asset(
          "assets/splash/logoD.png",
          scale: 2,
        ),
      ),
    );
  }
}
