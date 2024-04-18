import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_practicr/ProgressIndicators/CircleProgressIndicator/welcome_page.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class LinearProgressIndicatorScreen2 extends StatefulWidget {
  const LinearProgressIndicatorScreen2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LinearProgressIndicatorScreen2State createState() =>
      _LinearProgressIndicatorScreen2State();
}

class _LinearProgressIndicatorScreen2State
    extends State<LinearProgressIndicatorScreen2> {
  int _secondsRemaining = 5;
  double _initial = 0.0;

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(milliseconds: 600), (Timer timer) {
      setState(() {
        _secondsRemaining--;
        _initial = _initial + 0.2;
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
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: 100,
                child: LinearProgressIndicator(
                  
                  value: _initial,
                  valueColor: const AlwaysStoppedAnimation<Color>(orange),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
