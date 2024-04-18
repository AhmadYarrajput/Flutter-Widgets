import 'package:flutter/material.dart';
import 'package:ui_practicr/Buttons/buttons_tabs.dart';
import 'package:ui_practicr/Cards/all_cards.dart';
import 'package:ui_practicr/Chips/all_chips.dart';
import 'package:ui_practicr/Drawer/drawer_buttons.dart';
import 'package:ui_practicr/Grid/all_grid_buttons.dart';
import 'package:ui_practicr/List.dart/all_list_buttons.dart';
import 'package:ui_practicr/ProgressIndicators/all_progress_indicators.dart';
import 'package:ui_practicr/TabBar/all_tabbar_buttons.dart';
import 'package:ui_practicr/Dialog%20Box/animated_dialog_box.dart';
import 'package:ui_practicr/Toast.dart/toast_snackbar_button.dart';
import 'package:ui_practicr/Utility/app_color.dart';
import 'package:ui_practicr/bottom_navigation_bar/bottom_bar_buttons.dart';
import 'package:ui_practicr/Expandable%20bottom%20sheet/expandable_bottomsheet.dart';
import 'package:ui_practicr/Loading%20animation/shimmer_effects.dart';
import 'package:ui_practicr/Sliver%20app%20bar/sliver_appbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'Material Kit Templates',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyCustomAppBar()),
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
                              color: red)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [redaccent, orangeaccent],
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight)),
                    child: const Center(
                        child: Text(
                      'App Bar',
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
                          builder: (context) => const BottomBarButtons()),
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
                      'Bottom Navigatoin Bar',
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
                          builder: (context) => const DrawerButtons()),
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
                    ], color: orange, borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Drawer',
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
                          builder: (context) => const AllListButtons()),
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
                              color: pink)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [pink, greyShade],
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight)),
                    child: const Center(
                        child: Text(
                      'List',
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
                          builder: (context) => const AllGridButtons()),
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
                    ], color: cyan, borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Grid',
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
                          builder: (context) => const ExpandableBottomSheet()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: yellow)
                    ], color: yellow, borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Bottom Sheet',
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
                          builder: (context) => const ShimmerEffects()),
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
                    ], color: purple, borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Loading Effect',
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
                          builder: (context) => const AllTabBarButtons()),
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
                              color: lightGreen)
                        ],
                        color: lightGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Tab Bar',
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
                          builder: (context) => const AnimatedDialogBox()),
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
                              color: golden)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [golden, orange],
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight)),
                    child: const Center(
                        child: Text(
                      'Dialog Box',
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
                          builder: (context) => const ButtonsTabs()),
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
                              color: darkGreen)
                        ],
                        color: darkGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Buttons',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AllChips()),
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
                              color: darkBlue)
                        ],
                        color: darkBlue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Chips',
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
                          builder: (context) => const AllProgressIndicators()),
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
                              color: orange)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [lightGolden, orange],
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight)),
                    child: const Center(
                        child: Text(
                      'Progress Indicators',
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
                          builder: (context) => const ToastSnackBarButtons()),
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
                              color: redaccent)
                        ],
                        color: redaccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Toast',
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
                          builder: (context) => const AllCards()),
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
                    ], color: cyan, borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Cards',
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
