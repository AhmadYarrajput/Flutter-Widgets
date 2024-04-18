import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class CustomTabbar extends StatefulWidget {
  const CustomTabbar({super.key});

  @override
  State<CustomTabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  late PageController _pageController;
  int selectedTabIndex = 0;
  late List<double> progressValues = List<double>.filled(3, 0.0);

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.menu),
          )
        ],
        iconTheme: const IconThemeData(color: black),
        title: const Text('Custom Tab Bar'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildTab('Date', 0),
                    buildTab('Month', 1),
                    buildTab('Year', 2),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProgressIndicator(
                      selectedTabIndex == 0, progressValues[0]),
                  buildProgressIndicator(
                      selectedTabIndex == 1, progressValues[1]),
                  buildProgressIndicator(
                      selectedTabIndex == 2, progressValues[2]),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedTabIndex = index;
                    progressValues[index] = 1.0;
                  });
                },
                children: const [
                  Center(
                      child:
                          Text('Date Screen', style: TextStyle(fontSize: 30))),
                  Center(
                      child:
                          Text('Month Screen', style: TextStyle(fontSize: 30))),
                  Center(
                      child:
                          Text('Year Screen', style: TextStyle(fontSize: 30))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTab(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _pageController.jumpToPage(index);
        });
      },
      child: Container(
        width: 110,
        height: 50,
        decoration: BoxDecoration(
          color: selectedTabIndex == index ? Colors.cyan : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selectedTabIndex == index ? white : grey,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProgressIndicator(bool isSelected, double value) {
    return SizedBox(
      width: 40,
      child: LinearProgressIndicator(
        valueColor:
            isSelected ? const AlwaysStoppedAnimation<Color>(cyan) : null,
        backgroundColor: transparent,
        value: isSelected ? value : 0.0,
      ),
    );
  }
}
