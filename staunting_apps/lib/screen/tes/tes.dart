import 'package:flutter/material.dart';

class TesScreen extends StatefulWidget {
  const TesScreen({super.key});

  @override
  State<TesScreen> createState() => _TesScreenState();
}

class _TesScreenState extends State<TesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            "Halaman artikel 2",
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
