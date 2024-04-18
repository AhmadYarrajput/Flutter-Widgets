import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class BasicTabBar extends StatefulWidget {
  const BasicTabBar({super.key});

  @override
  State<BasicTabBar> createState() => _BasicTabBarState();
}

class _BasicTabBarState extends State<BasicTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: black),
          backgroundColor: amber,
          title: const Text('Basic'),
          titleTextStyle: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                color: black,
              ),
            )
          ],
          bottom: TabBar(
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                return states.contains(MaterialState.focused)
                    ? null
                    : Colors.transparent;
              }),
              indicatorColor: black,
              labelColor: black,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              tabs: const [
                Tab(text: 'Home'),
                Tab(text: 'Category'),
                Tab(text: 'Favorite'),
                Tab(text: 'Profile'),
              ]),
        ),
        body: TabBarView(controller: _tabController, children: const [
          Center(child: Text('Home Screen', style: TextStyle(fontSize: 15))),
          Center(
              child: Text('Category Screen', style: TextStyle(fontSize: 15))),
          Center(
              child: Text('Favorite Screen', style: TextStyle(fontSize: 15))),
          Center(child: Text('Profile Screen', style: TextStyle(fontSize: 15))),
        ]),
      ),
    );
  }
}
