import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double _progressValue = 0.0;
  int _currentStep = 0;
  final double minProgressValue = 0.1;
  final double step = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('Button Progress'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text('Step $_currentStep of 10'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: const Text('Back'),
                  onPressed: () {
                    setState(() {
                      _progressValue =
                          (_progressValue - step).clamp(minProgressValue, 1.0);
                      _currentStep = (_currentStep - 1).clamp(1, 10);
                    });
                  },
                ),
                Flexible(
                  child: LinearProgressIndicator(
                    value: _progressValue,
                    minHeight: 5,
                    backgroundColor: greyShade,
                    valueColor: const AlwaysStoppedAnimation(red),
                  ),
                ),
                TextButton(
                  child: const Text('Next'),
                  onPressed: () {
                    setState(() {
                      _progressValue =
                          (_progressValue + step).clamp(minProgressValue, 1.0);
                      _currentStep = (_currentStep + 1).clamp(1, 10);
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
