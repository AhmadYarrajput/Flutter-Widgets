import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Back'),
        titleTextStyle: const TextStyle(color: white, fontSize: 25),
        backgroundColor: purple,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Wellcome Back!',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
