// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  final List<Widget> _widgetOptions = <Widget>[
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  final List<String> _itemNames = [
    'Notification',
    'Call center',
    'Settings',
    'Favorite',
  ];

  final List _itemIcons = [
    Icons.notifications,
    Icons.call,
    Icons.settings,
    Icons.favorite,
  ];
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
        setState(() {
          _isTapped = !_isTapped;
        });
      },
    );
  }

  bool _isTapped = false;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isTapped = false;
        });
      },
      child: Stack(
        children: [
          SizedBox(
            width: Get.width,
            child: Drawer(
              elevation: 0,
              backgroundColor: lightPink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: dim.width * 0.04, top: dim.height * 0.04),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          maxRadius: 28,
                          child: Icon(Icons.person),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dakota Jonson',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'dakota@gmail.com',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: lightGrey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: dim.height * 0.070),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _widgetOptions.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _onItemTapped(index);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  margin:
                                      EdgeInsets.only(top: Get.height * 0.050),
                                  width: dim.width * 0.4,
                                  child: ListTile(
                                    dense: true,
                                    leading: Icon(
                                      _itemIcons[index],
                                      color: _selectedIndex == index
                                          ? orange
                                          : white,
                                    ),
                                    title: Text(
                                      _itemNames[index],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: _selectedIndex == index
                                              ? orange
                                              : white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: Get.height * 0.20, right: Get.width * 0.5),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 18.0, left: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Icon(
                              Icons.logout,
                              color: white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Log Out',
                            style: TextStyle(fontSize: 18, color: white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            width: _isTapped ? dim.width * 0.91 : dim.width,
            height: _isTapped ? dim.height * 0.6 : dim.height,
            transform: Matrix4.translationValues(
                _isTapped ? dim.width * 0.7 : 0,
                _isTapped ? dim.height * 0.2 : 0,
                0),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
            child: Container(
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  PreferredSize(
                    preferredSize: Size.fromHeight(
                      _isTapped ? dim.height * 0.02 : dim.height * 0.067,
                    ),
                    child: Padding(
                      padding: _isTapped
                          ? EdgeInsets.only(top: Get.height * 0.01)
                          : EdgeInsets.only(
                              top: Get.height * 0.048,
                            ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isTapped = !_isTapped;
                                  });
                                },
                                child: Icon(
                                  Icons.menu,
                                  size: _isTapped ? 20 : 30,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
