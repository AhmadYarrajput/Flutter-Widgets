import 'package:flutter/material.dart';
import 'package:ui_practicr/Buttons/bouncing_button.dart';
import 'package:ui_practicr/Buttons/gradient_buttons.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class ButtonsTabs extends StatelessWidget {
  const ButtonsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'Buttons',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GradientButtons()),
                      );
                    },
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                            blurStyle: BlurStyle.outer, blurRadius: 5, color: purple)
                      ], borderRadius: BorderRadius.circular(10), color: purple),
                      child: const Center(
                          child: Text(
                        'Gradient Buttons',
                        style: TextStyle(fontSize: 20, color: white),
                      )),
                    ),
                  ),
                  const SizedBox(height: 10),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BouncingButton()),
                      );
                    },
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                            blurStyle: BlurStyle.outer, blurRadius: 5, color: red)
                      ], borderRadius: BorderRadius.circular(10), color: red),
                      child: const Center(
                          child: Text(
                        'Bouncing Button',
                        style: TextStyle(fontSize: 20, color: white),
                      )),
                    ),
                  ),
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
