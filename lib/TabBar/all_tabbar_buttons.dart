import 'package:flutter/material.dart';
import 'package:ui_practicr/TabBar/Icon_text_tabs.dart';
import 'package:ui_practicr/TabBar/basic_tabbar.dart';
import 'package:ui_practicr/TabBar/circle_tabs.dart';
import 'package:ui_practicr/TabBar/custom_tabbar.dart';
import 'package:ui_practicr/TabBar/icon_with_label_tabbar.dart';
import 'package:ui_practicr/TabBar/icon_tabbar.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AllTabBarButtons extends StatelessWidget {
  const AllTabBarButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'Tab Bars',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IconTabBar()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: darkGrey)
                    ], borderRadius: BorderRadius.circular(10), color: darkGrey),
                    child: const Center(
                        child: Text(
                      'Icon Tab Bar',
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
                          builder: (context) => const IconWithLabelTabBar()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: blueGrey)
                    ], borderRadius: BorderRadius.circular(10), color: blueGrey),
                    child: const Center(
                        child: Text(
                      'Icons & Labels Bar',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BasicTabBar()),
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
                      'Basic Tab bar',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IconTextTabs()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: golden)
                    ], borderRadius: BorderRadius.circular(10), color: golden),
                    child: const Center(
                        child: Text(
                      'Icon Text Tab Bar',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CircleTabs()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: cyan)
                    ], borderRadius: BorderRadius.circular(10), color: cyan),
                    child: const Center(
                        child: Text(
                      'Circle Tab Bar',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CustomTabbar()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: darkBlue)
                    ], borderRadius: BorderRadius.circular(10), color: darkBlue),
                    child: const Center(
                        child: Text(
                      'Custom Tab Bar',
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
