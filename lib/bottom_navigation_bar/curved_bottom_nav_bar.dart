
import 'package:flutter/material.dart';
import 'package:ui_practicr/ExternalPackages/CurvedNavBar/curved_nav_bar_pkg.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Curved Bottom Navigation Bar '),
      ),
      body: Center(
        child: Text(
          'Page $_currentIndex',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: white,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: white,
          ),
          Icon(
            Icons.favorite,
            size: 30,
            color: white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: white,
          ),
        ],
        color:blue,
        buttonBackgroundColor:blue,
        backgroundColor: white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
