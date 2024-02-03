import 'package:flutter/material.dart';
import 'package:staunting_apps/screen/bottom_navigation/bottom_navigation.dart';

class SurveyDetailScreen extends StatefulWidget {
  const SurveyDetailScreen({super.key});

  @override
  State<SurveyDetailScreen> createState() => _SurveyDetailScreenState();
}

class _SurveyDetailScreenState extends State<SurveyDetailScreen> {
  List<Question> questions = [
    Question(
        'Apakah menurut tabel diatas berat badan anak anda termasuk golongan normal ?',
        false),
    Question('Apakah ibu hamil dengan usia dibawah 20 tahun?', true),
    Question(
        'Pada saat hamil, apakah ibu mengalami anemia (kekurangan darah merah)?',
        true),
    Question(
        'Pada saat hamil, apakah ibu pernah mengalami penyakit infeksi? (disentri, tuberkulosis, pneumonia dll)?',
        true),
    Question(
        'Apakah bayi pada saat lahir berat badannya diatas 2,5 kg?', false),
    Question('Apakah anak mudah mengalami penyakit infeksi?', true),
    Question(
        'Apakah wajah anak tampak lebih muda dari pada anak seusianya?', true),
    Question('Apakah anak sukar untuk makan?', true),
    Question('Apakah anak terlambat tumbuh gigi?', true),
    Question('Apakah Anak mengalami penurunan BB?', true),
    Question('Apakah anak cenderung pendiam?', true),
    Question(
        'Apakah anak sulit melakukan eye contact saat memasuki usia 8-10 tahun?',
        true),
    Question('Apakah anak tidak mendapatkan asi eksklusif 0-6 bulan?', false),
    Question(
        'Apakah anak mudah lelah dan tak lincah dibandingkan dengan anak-anak lain seusianya?',
        true),
  ];

  List<bool?> userAnswers = List.filled(14, null);

  int questionIndex = 0;
  bool isLastQuestion = false;
  int correctAnswers = 0;
  int incorrectAnswers = 0;

  void answerQuestion(bool answer) {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
        if (questionIndex == 13) {
          isLastQuestion = true;
        }
      });
    } else {
      isLastQuestion = false;
      correctAnswers = 0;
      incorrectAnswers = 0;

      for (int i = 0; i < questions.length; i++) {
        if (userAnswers[i] == questions[i].answer) {
          correctAnswers++;
        } else {
          incorrectAnswers++;
        }
      }

      String resultMessage;
      if (correctAnswers >= 12) {
        resultMessage = "Anak anda terindikasi staunting\n"
            "Untuk hasil yang lebih valid, segera periksa ke pusat kesehatan terdekat";
      } else {
        resultMessage = "Anak anda tidak terindikasi staunting";
      }

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            // title: const Text('Selesai'),
            content: Column(
              children: [
                // Text(
                //     'Jawaban benar: $correctAnswers\nJawaban salah: $incorrectAnswers'),
                Text(
                  resultMessage,
                  style: const TextStyle(
                    color: Color(0xFF332C55),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ), // Menampilkan pesan lulus atau gagal
                const Text(
                  'Untuk Informasi Stunting, Buka Menu Stunting',
                  style: TextStyle(
                    color: Color(0xFF332C55),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ), // Menampilkan pesan lulus atau gagal
              ],
            ),
            actions: [
              Center(
                child: TextButton(
                  child: const Text('Tutup'),
                  onPressed: () {
                    // Navigator.of(context).pop();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomPageView(
                                  initialIndex: 1,
                                )));
                  },
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0), // Atur ketinggian App Bar
        child: Container(
          margin: const EdgeInsets.only(
              top: 20.0, bottom: 10.0), // Menambahkan margin atas dan bawah
          child: AppBar(
            title: const Text(
              "SURVEY STUNTING",
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                  child: InteractiveViewer(
                child: Image.asset(
                  questionIndex == 0
                      ? "assets/splash/tabel-ukuran.jpg"
                      : "assets/splash/stunting-survey.jpg", // Ganti dengan path gambar yang sesuai
                  scale: 3,
                ),
              )),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${questionIndex + 1}. ${questions[questionIndex].questionText}',
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Color(0xFF332C55),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      height: 36,
                      margin: const EdgeInsets.only(bottom: 8, top: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Radio<bool>(
                            value: true,
                            groupValue: userAnswers[questionIndex],
                            onChanged: (value) {
                              setState(() {
                                userAnswers[questionIndex] =
                                    value; // Simpan jawaban sementara
                              });
                            },
                            activeColor: const Color(0xFF1AACAC),
                          ),
                          const Text(
                            'Iya',
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Radio<bool>(
                            value: false,
                            groupValue: userAnswers[questionIndex],
                            onChanged: (value) {
                              setState(() {
                                userAnswers[questionIndex] =
                                    value; // Simpan jawaban sementara
                              });
                            },
                            activeColor: const Color(0xFF1AACAC),
                          ),
                          const Text(
                            'Tidak',
                            style: TextStyle(
                              color: Color(0xFF332C55),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (isLastQuestion) {
                  answerQuestion(true); // Submit jawaban pada pertanyaan ke-10
                } else {
                  answerQuestion(true);
                }
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
                child: Text(
                  isLastQuestion ? 'LIHAT HASIL' : 'SELANJUTNYA',
                  style: const TextStyle(
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

class Question {
  String questionText;
  bool answer;
  bool answered = false;
  bool? selectedAnswer;

  Question(this.questionText, this.answer);
}
