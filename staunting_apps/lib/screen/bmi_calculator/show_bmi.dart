import 'package:flutter/material.dart';

// import 'components/bmi_calculate.dart';
import '../../constants/constants.dart';

class ShowBmi extends StatelessWidget {
  const ShowBmi(
      {super.key,
      required this.bmi,
      required this.category,
      required this.health});
  final String bmi;
  final String category;
  final String health;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HASIL PERHITUNGAN",
          style: TextStyle(
            color: Color(0xFF332C55),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleSpacing: 20.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF332C55),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 15),
              decoration: BoxDecoration(
                color: kinactiveCardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Text(
                    bmi,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 64.0,
                        color: Color(0xFF1AACAC)),
                  ),
                  Text(
                    category.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 28.0,
                        color: Color(0xFF1AACAC)),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    health.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.0,
                        color: Color(0xFF332C55)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 42, horizontal: 28),
                child: Column(
                  children: [
                    Text(
                      "Keterangan Hasil",
                      style: TextStyle(
                        color: Color(0xFF332C55),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bobot Terlalu Rendah",
                                style: TextStyle(
                                  color: Color(0xFF332C55),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Sangat Kurang Bobot",
                                style: TextStyle(
                                  color: Color(0xFF332C55),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Kurang Bobot",
                                style: TextStyle(
                                  color: Color(0xFF332C55),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Normal",
                                style: TextStyle(
                                  color: Color(0xFF332C55),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Kelebihan Bobot",
                                style: TextStyle(
                                  color: Color(0xFF332C55),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Obesitas Kelas I",
                                style: TextStyle(
                                  color: Color(0xFF332C55),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Obesitas Kelas II",
                                style: TextStyle(
                                  color: Color(0xFF332C55),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Obesitas Kelas III",
                                style: TextStyle(
                                  color: Color(0xFF332C55),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                            ]),
                        Column(children: [
                          Text(
                            "≤ 15.9",
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "16.0 - 16.9",
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "17.0 - 18.4",
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "18.5 - 24.9",
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "25.0 - 29.9",
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "30.0 - 34.9",
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "35.0 - 39.9",
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "≥ 40.0",
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
