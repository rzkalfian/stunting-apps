import 'dart:math';

class BmiCalculate {
  late int height;
  late int weight;
  // late int age;
  // String? category;
  double bmi = 0.0;
  //String? health;

  BmiCalculate({required this.height, required this.weight});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (bmi <= 15.9) {
      return "Bobot Terlalu Rendah";
    } else if (bmi >= 16.0 && bmi <= 16.9) {
      return "Sangat Kurang Bobot";
    } else if (bmi >= 17.0 && bmi <= 18.4) {
      return "Kurang Bobot";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return "Normal";
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      return "Kelebihan Bobot";
    } else if (bmi >= 30.0 && bmi <= 34.9) {
      return "Obesitas Kelas I";
    } else if (bmi >= 35.0 && bmi <= 39.9) {
      return "Obesitas Kelas II";
    } else if (bmi >= 40) {
      return "Obesitas Kelas IIi";
    } else {
      return "Obesitas";
    }
  }

  String bmiHealth() {
    if (bmi <= 15.9) {
      return "Saran untuk meningkatkan berat badan:\n1. Konsumsi makanan kaya gizi dengan porsi seimbang.\n2. Makan makanan ringan dan camilan sepanjang hari.";
    } else if (bmi >= 16.0 && bmi <= 16.9) {
      return "Saran untuk meningkatkan berat badan:\n1. Konsumsi makanan kaya gizi dengan porsi seimbang.\n2. Makan makanan ringan dan camilan sepanjang hari.";
    } else if (bmi >= 17.0 && bmi <= 18.4) {
      return "Saran untuk meningkatkan berat badan:\n1. Konsumsi makanan kaya gizi dengan porsi seimbang.\n2. Makan makanan ringan dan camilan sepanjang hari.";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return "Saran untuk menjaga berat badan yang sehat.";
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      return "Saran untuk menurunkan berat badan:\n1. Terapkan diet berkalori terkontrol dengan fokus pada makanan bergizi.";
    } else if (bmi >= 30.0 && bmi <= 34.9) {
      return "Saran untuk mengelola Obesitas Kelas I:\n1. Konsultasikan dengan profesional kesehatan untuk rencana manajemen berat badan yang komprehensif.";
    } else if (bmi >= 35.0 && bmi <= 39.9) {
      return "Saran untuk mengelola Obesitas Kelas II:\n1. Konsultasikan dengan profesional kesehatan untuk rencana manajemen berat badan yang komprehensif.";
    } else if (bmi >= 40) {
      return "Saran untuk mengelola Obesitas Kelas III:\n1. Konsultasikan dengan profesional kesehatan untuk rencana manajemen berat badan yang komprehensif.";
    } else {
      return "Saran untuk mengelola Obesitas:\n1. Konsultasikan dengan profesional kesehatan untuk rencana manajemen berat badan yang komprehensif.";
    }
  }
}
