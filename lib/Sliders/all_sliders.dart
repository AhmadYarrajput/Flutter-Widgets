import 'package:flutter/material.dart';
import 'package:ui_practicr/Sliders/sliders.dart';
class AllSliders extends StatelessWidget {
  const AllSliders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Sliders()));
                        },
                        child: const Text('Step Slider')),
                  ),
          ],
        ),
      ),
    );
  }
}