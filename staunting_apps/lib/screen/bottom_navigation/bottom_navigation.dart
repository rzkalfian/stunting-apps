// ignore_for_file: no_logic_in_create_state, library_private_types_in_public_api, unused_import

import 'package:flutter/material.dart';
import 'package:staunting_apps/screen/artikel/artikel.dart';
import 'package:staunting_apps/screen/helper/global_colors.dart';
import 'package:staunting_apps/screen/staunting_survey/survey.dart';
import 'package:staunting_apps/screen/tes/tes.dart';

import '../bmi_calculator/input_page.dart';

class BottomPageView extends StatefulWidget {
  final int initialIndex;

  BottomPageView({this.initialIndex = 0});

  @override
  _BottomPageViewState createState() =>
      _BottomPageViewState(initialIndex: initialIndex);
}

class _BottomPageViewState extends State<BottomPageView> {
  int _currentIndex = 0;
  _BottomPageViewState({int initialIndex = 0}) {
    _currentIndex = initialIndex;
  }

  final List<Widget> _children = [
    const InputPage(),
    const SurveyScreen(),
    const ArtikelScreen(),
  ];

  GlobalColors globalColors = GlobalColors();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: globalColors.iconGreen,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: globalColors.iconGreen),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: _currentIndex == 0
                    ? globalColors.bgGreenShadow
                    : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                _currentIndex == 0
                    ? Icons.calculate_outlined
                    : Icons.calculate_rounded,
                color: globalColors.iconGreen,
              ),
            ),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: _currentIndex == 1
                    ? globalColors.bgGreenShadow
                    : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                _currentIndex == 1 ? Icons.task_outlined : Icons.task_rounded,
                color: globalColors.iconGreen,
              ),
            ),
            label: 'TES',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: _currentIndex == 2
                    ? globalColors.bgGreenShadow
                    : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                _currentIndex == 2
                    ? Icons.article_outlined
                    : Icons.article_rounded,
                color: globalColors.iconGreen,
              ),
            ),
            label: 'STUNTING',
          ),
        ],
      ),
    );
  }
}
