import 'package:flutter/material.dart';
import 'package:staunting_apps/screen/staunting_survey/survey_detail.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 20),
                child: Text(
                  "STUNTING TES",
                  style: TextStyle(
                    color: Color(0xFF332C55),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  "assets/splash/stunting-survey.jpg",
                  scale: 3,
                ),
              ),
              const SizedBox(height: 10),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Column(
                    children: [
                      Text(
                        'Selamat datang di Survey Stunting Anak!',
                        style: TextStyle(
                          color: Color(0xFF332C55),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Survey ini bertujuan untuk membantu Anda menentukan apakah seorang anak mengalami stunting, sebuah kondisi yang bisa memengaruhi pertumbuhan dan perkembangan anak.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFc9c9c9),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 64,
                      ),
                      Text(
                        'Mohon isi survei ini dengan benar karena hasil survei ini penting untuk menilai kesehatan anak Anda.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF332C55),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SurveyDetailScreen()),
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
                    "MULAI SURVEY",
                    style: TextStyle(
                      color: Color(0xFF332C55),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
