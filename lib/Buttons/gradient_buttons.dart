import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class GradientButtons extends StatelessWidget {
  const GradientButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightGreen,
        title: const Text('Gradient Buttons'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            reuseableButton(
                borderRadius: BorderRadius.circular(25),
                gradientColor: [darkGreen, lightGreen]),
            reuseableButton(
                borderRadius: BorderRadius.circular(10),
                gradientColor: [amber, amber]),
            reuseableButton(
                borderRadius: BorderRadius.circular(2),
                gradientColor: [blueGrey, cyan]),
            reuseableButton(
                borderRadius: BorderRadius.circular(25),
                gradientColor: [purple, darkBlue]),
            reuseableButton(
                borderRadius: BorderRadius.circular(10),
                gradientColor: [cyan, lightGolden]),
            reuseableButton(
                borderRadius: BorderRadius.circular(2),
                gradientColor: [lightGreen, lightBlue]),
            reuseableButton(
                borderRadius: BorderRadius.circular(25),
                gradientColor: [lightBlue, pink, red]),
            reuseableButton(
                borderRadius: BorderRadius.circular(10),
                gradientColor: [pink, lightGolden, cyan]),
            reuseableButton(
                borderRadius: BorderRadius.circular(2),
                gradientColor: [darkBlue, cyan]),
          ],
        ),
      ),
    );
  }

  reuseableButton({borderRadius, gradientColor}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            borderRadius: borderRadius,
            gradient: LinearGradient(
                colors: gradientColor,
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight)),
        child: const Center(
            child: Text(
          'Login',
          style: TextStyle(
              color: white, fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
