import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class DotBottomNavBar extends StatefulWidget {
  const DotBottomNavBar({super.key});

  @override
  State<DotBottomNavBar> createState() => _DotBottomNavBarState();
}

class _DotBottomNavBarState extends State<DotBottomNavBar> {
  int myIndex = 0;
  List<Widget> widgetList = [
    Container(color: amber),
    Container(color: red),
    Container(color: green),
    Container(color: purple),
  ];

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      body: widgetList[myIndex],
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            selectedItemColor: red,
            unselectedItemColor: grey,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Likes'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account'),
            ],
          ),
          Positioned(
            bottom: 5.0,
            left: dim.width / 4 * myIndex + 40.0,
            child: Container(
              width: 8.0,
              height: 8.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
