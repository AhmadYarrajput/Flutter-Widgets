// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class IconTextTabs extends StatefulWidget {
  const IconTextTabs({super.key});

  @override
  State<IconTextTabs> createState() => _IconTextTabsState();
}

class _IconTextTabsState extends State<IconTextTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: amber,
          iconTheme: const IconThemeData(color: black),
          title: const Text('Icon Tabs'),
          titleTextStyle: const TextStyle(fontSize: 20, color: Colors.black),
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
              splashFactory: NoSplash.splashFactory,
              indicatorColor: black,
              labelColor: black,
              indicatorWeight: 3,
              unselectedLabelColor: darkGrey,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              tabs: [
                myTab(icon: Icons.home, label: 'Home'),
                myTab(icon: Icons.category, label: 'Category'),
                myTab(icon: Icons.favorite, label: 'Favorite'),
              ]),
        ),
        body: TabBarView(controller: _tabController, children: const [
          Center(child: Text('Home Screen', style: TextStyle(fontSize: 15))),
          Center(
              child: Text('Category Screen', style: TextStyle(fontSize: 15))),
          Center(
              child: Text('Favorite Screen', style: TextStyle(fontSize: 15))),
        ]),
      ),
    );
  }

  myTab({label, icon}) {
    return Tab(
        height: 80,
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 5),
            Text(label),
          ],
        ));
  }
}
