// import 'package:app_testing/show_bmi.dart';
import 'package:flutter/material.dart';
import 'package:staunting_apps/screen/bmi_calculator/show_bmi.dart';
import '../../component/bmi/bmi_calculate.dart';
import '../../component/bmi/reuseable_card_dart.dart';
import '../../component/bmi/round_icon_button.dart';
import '../../constants/constants.dart';
import '../../constants/icon_content_dart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female, empty }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.empty;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 10),
              child: Text(
                "BMI KALKULATOR",
                style: TextStyle(
                  color: Color(0xFF332C55),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResuableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kselectedCardColor
                          : kinactiveCardColor,
                      cardChild: const IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                  Expanded(
                      child: ResuableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kselectedCardColor
                        : kinactiveCardColor,
                    cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResuableCard(
                        colour: kinactiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'HEIGHT',
                              style: textStyleData,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(height.toString(), style: numberTextStyle),
                                const Text(
                                  'Cm',
                                  style: textStyleData,
                                )
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbColor: const Color(0xFF1AACAC),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: const Color(0xFF8D8E98),
                                thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 15.0),
                                overlayShape: const RoundSliderOverlayShape(
                                    overlayRadius: 30.0),
                              ),
                              child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                },
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResuableCard(
                      colour: kinactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: textStyleData,
                          ),
                          Text(
                            weight.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  buttonPress: () {
                                    // weightCalculate(1);
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  buttonPress: () {
                                    //  weightCalculate(2);
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResuableCard(
                      colour: kinactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: textStyleData,
                          ),
                          Text(
                            age.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  buttonPress: () {
                                    // ageCalculate(1);
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  buttonPress: () {
                                    // ageCalculate(2);
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("tinggi : ${height}");
                print("berat : ${weight}");
                BmiCalculate showBmi =
                    BmiCalculate(height: height, weight: weight);
                //   print(height);
                print(showBmi.calculateBMI());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShowBmi(
                              bmi: showBmi.calculateBMI(),
                              category: showBmi.bmiResult(),
                              health: showBmi.bmiHealth(),
                            )));
                //  print(showBmi.result());
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
                  "LIHAT HASIL",
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
    );
  }
}
