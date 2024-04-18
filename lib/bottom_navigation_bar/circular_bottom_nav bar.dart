// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:ui_practicr/ExternalPackages/CircularNavBar/circular_nav_bar_pkg.dart';
import 'package:ui_practicr/ExternalPackages/CircularNavBar/tab_item.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class CircularBottomNavBar extends StatefulWidget {
  const CircularBottomNavBar({super.key});

  @override
  _CircularBottomNavBarState createState() => _CircularBottomNavBarState();
}

class _CircularBottomNavBarState extends State<CircularBottomNavBar> {
  int selectedPos = 0;
  double bottomNavBarHeight = 60;
  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, 'Home', purple,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold)),
    TabItem(Icons.search, 'Search', pink,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold)),
    TabItem(Icons.layers, 'Reports', red,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold)),
    TabItem(Icons.notifications, 'Notifications', cyan,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold)),
  ]);

  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          IndexedStack(
            index: selectedPos,
            children: [
              Container(
                color: purple,
              ),
              Container(
                color: pink,
              ),
              Container(
                color: red,
              ),
              Container(
                color: cyan,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: bottomNav(),
          ),
        ],
      ),
    );
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: white,
      animationDuration: const Duration(milliseconds: 300),
      selectedCallback: (selectedPos) {
        setState(() {
          this.selectedPos = selectedPos!;
        });
      },
    );
  }
}
