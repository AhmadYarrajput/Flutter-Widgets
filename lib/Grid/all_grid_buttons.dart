import 'package:flutter/material.dart';
import 'package:ui_practicr/Grid/E-CommerceGrid/e_commerce_grid.dart';
import 'package:ui_practicr/Grid/HotelGrid/hotel_grid.dart';
import 'package:ui_practicr/Grid/StaggeredGrid/staggered_grid.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AllGridButtons extends StatelessWidget {
  const AllGridButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'All Grid Tabs',
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
                      MaterialPageRoute(builder: (context) => ECommerceGrid()),
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
                      'E-Commerece Grid',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StaggeredGrid()),
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
                      'Staggered Grid',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HotelGrid()),
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
                      'Hotel Grid',
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
