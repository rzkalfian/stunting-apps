import 'package:flutter/material.dart';
import 'package:staunting_apps/screen/bottom_navigation/bottom_navigation.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 462,
                height: 462,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/splash/bg_green.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 262,
                    height: 262,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/splash/Logo_Apps.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomPageView()),
                  );
                },
                child: Container(
                  width: 173,
                  height: 54,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEEEEEE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "MULAI",
                    style: TextStyle(
                      color: Color(0xFF332C55),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
