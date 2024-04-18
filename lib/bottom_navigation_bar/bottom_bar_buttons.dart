// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';
import 'package:ui_practicr/bottom_navigation_bar/circular_bottom_nav%20bar.dart';
import 'package:ui_practicr/bottom_navigation_bar/curved_bottom_nav_bar.dart';
import 'package:ui_practicr/bottom_navigation_bar/dot_bottom_nav_bar.dart';

class BottomBarButtons extends StatelessWidget {
  const BottomBarButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Nav Bar',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      backgroundColor: greyShade,
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
                          builder: (context) => const MyBottomNavigationBar()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.outer,
                              blurRadius: 5,
                              color: blue)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [blue, greyShade],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)),
                    child: const Center(
                        child: Text(
                      'Curved Bottom Navigatoin Bar',
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
                          builder: (context) => const CircularBottomNavBar()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: purple)
                    ], borderRadius: BorderRadius.circular(10), color: purple),
                    child: const Center(
                        child: Text(
                      'Circular Bottom Navigatoin Bar',
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
                          builder: (context) => const DotBottomNavBar()),
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
                      'Dot Bottom Navigatoin Bar',
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
