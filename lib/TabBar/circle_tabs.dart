import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class CircleTabs extends StatefulWidget {
  const CircleTabs({super.key});

  @override
  State<CircleTabs> createState() => _CircleTabsState();
}

class _CircleTabsState extends State<CircleTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkGrey,
      appBar: AppBar(
        backgroundColor: transparent,
        title: const Text('Circle Tabs'),
        titleTextStyle: const TextStyle(color: white, fontSize: 25),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: white,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: black,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused)
                      ? null
                      : Colors.transparent;
                }),
                dividerColor: transparent,
                controller: _tabController,
                labelColor: white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: cyan,
                  borderRadius: BorderRadius.circular(25),
                ),
                tabs: [
                  buildTab('Year'),
                  buildTab('Month'),
                  buildTab('Day'),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildTabScreen('Tab 1'),
          buildTabScreen('Tab 2'),
          buildTabScreen('Tab 3'),
        ],
      ),
    );
  }

  Widget buildTab(
    String text,
  ) {
    return SizedBox(
      width: 100,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }

  Widget buildTabScreen(String content) {
    return Center(
      child: Text(
        content,
        style: const TextStyle(color: white, fontSize: 20),
      ),
    );
  }
}
