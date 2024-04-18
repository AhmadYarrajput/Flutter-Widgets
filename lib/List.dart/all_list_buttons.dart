// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:ui_practicr/List.dart/Dragable%20list/dragable_list.dart';
import 'package:ui_practicr/List.dart/FoodList/food_list.dart';
import 'package:ui_practicr/List.dart/PaymentList/payment_list.dart';
import 'package:ui_practicr/List.dart/SimpleList/simple_list.dart';
import 'package:ui_practicr/List.dart/StackList/stack_list.dart';
import 'package:ui_practicr/List.dart/SwipeList/swipe_list.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AllListButtons extends StatelessWidget {
  const AllListButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'All List Tabs',
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
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DragableList()),
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
                            color: blueGrey)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: blueGrey,
                    ),
                    child: const Center(
                        child: Text(
                      'Dragable List',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SwipeList()),
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
                            color: grey)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: grey,
                    ),
                    child: const Center(
                        child: Text(
                      'Swipe List',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SimpleList()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: darkGreen)
                    ], borderRadius: BorderRadius.circular(10), color: darkGreen),
                    child: const Center(
                        child: Text(
                      'Simple List',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const StackList()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer, blurRadius: 5, color: blue)
                    ], borderRadius: BorderRadius.circular(10), color: blue),
                    child: const Center(
                        child: Text(
                      'Stack List',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FoodList()),
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
                      'Food List',
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
                          builder: (context) => const PaymentList()),
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
                      'Payment List',
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
