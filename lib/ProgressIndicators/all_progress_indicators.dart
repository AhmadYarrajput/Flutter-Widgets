import 'package:flutter/material.dart';
import 'package:ui_practicr/ProgressIndicators/CircleProgress2/circle_progress_2.dart';
import 'package:ui_practicr/ProgressIndicators/CircleProgressIndicator/circle_progress_indicator.dart';
import 'package:ui_practicr/ProgressIndicators/LinearProgress2/linear_progress_2.dart';
import 'package:ui_practicr/ProgressIndicators/LinearProgressIndicator/linear_progress_indicator.dart';
import 'package:ui_practicr/ProgressIndicators/PullDownToRefresh/pull_down_refresh.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AllProgressIndicators extends StatelessWidget {
  const AllProgressIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'Progress Indicators',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const CircleProgressIndicatorScreen()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: orange)
                    ], borderRadius: BorderRadius.circular(10), color: orange),
                    child: const Center(
                        child: Text(
                      'Circle Progress Indicator',
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
                          builder: (context) =>
                              const LinearProgressIndicatorScreen()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: orange)
                    ], borderRadius: BorderRadius.circular(10), color: orange),
                    child: const Center(
                        child: Text(
                      'Linear Progress Indicator',
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
                          builder: (context) => const PullDownToRefresh()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: orange)
                    ], borderRadius: BorderRadius.circular(10), color: orange),
                    child: const Center(
                        child: Text(
                      'Pull Down To Refresh',
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
                          builder: (context) =>
                              const CircleProgressIndicatorScreen2()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: orange)
                    ], borderRadius: BorderRadius.circular(10), color: orange),
                    child: const Center(
                        child: Text(
                      'Circle Progress Indicator 2',
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
                          builder: (context) =>
                              const LinearProgressIndicatorScreen2()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: orange)
                    ], borderRadius: BorderRadius.circular(10), color: orange),
                    child: const Center(
                        child: Text(
                      'Linear Progress Indicator 2',
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
