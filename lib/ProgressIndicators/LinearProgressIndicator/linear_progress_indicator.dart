import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_practicr/ProgressIndicators/CircleProgressIndicator/welcome_page.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class LinearProgressIndicatorScreen extends StatefulWidget {
  const LinearProgressIndicatorScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LinearProgressIndicatorScreenState createState() =>
      _LinearProgressIndicatorScreenState();
}

class _LinearProgressIndicatorScreenState
    extends State<LinearProgressIndicatorScreen> {
  int _secondsRemaining = 5;

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _secondsRemaining--;
      });

      if (_secondsRemaining == 0) {
        timer.cancel();
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const WelcomePage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Progress Indicator'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/images/birds.png',
              fit: BoxFit.cover,
            ),
            const Spacer(),
            Text('Please wait $_secondsRemaining seconds'),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: 90,
                child: LinearProgressIndicator(
                  
                  valueColor: AlwaysStoppedAnimation<Color>(orange),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
