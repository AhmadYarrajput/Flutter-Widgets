import 'package:flutter/material.dart';
import 'package:ui_practicr/Drawer/hidden_drawer.dart';
import 'package:ui_practicr/Drawer/less_width_drawer.dart';
import 'package:ui_practicr/Drawer/simple_drawer.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class DrawerButtons extends StatelessWidget {
  const DrawerButtons({super.key});

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
                        builder: (context) => const HiddenDrawer()),
                  );
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        blurStyle: BlurStyle.outer, blurRadius: 5, color: pink)
                  ], borderRadius: BorderRadius.circular(10), color: pink),
                  child: const Center(
                      child: Text(
                    'Hidden Drawer',
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
                        builder: (context) => const SimpleDrawer()),
                  );
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        blurStyle: BlurStyle.outer, blurRadius: 5, color: cyan)
                  ], borderRadius: BorderRadius.circular(10), color: cyan),
                  child: const Center(
                      child: Text(
                    'Simple Drawer',
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
                        builder: (context) => const LessWidthDrawer()),
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
                    'Less Width Drawer',
                    style: TextStyle(fontSize: 20, color: white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
