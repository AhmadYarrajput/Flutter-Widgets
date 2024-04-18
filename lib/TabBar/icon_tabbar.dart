import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class IconTabBar extends StatefulWidget {
  const IconTabBar({super.key});

  @override
  State<IconTabBar> createState() => _IconTabBarState();
}

class _IconTabBarState extends State<IconTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
          backgroundColor: darkGrey,
          appBar: AppBar(
            title: const Text('Icon Tabs'),
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
            backgroundColor: transparent,
            bottom: TabBar(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused)
                      ? null
                      : Colors.transparent;
                }),
                dividerColor: grey,
                dividerHeight: 3,
                indicatorColor: blue,
                controller: _tabController,
                labelColor: white,
                unselectedLabelColor: blueGrey,
                tabAlignment: TabAlignment.center,
                isScrollable: true,
                labelPadding: const EdgeInsets.only(bottom: 15, left: 20),
                tabs: const [
                  Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.favorite_outline,
                    size: 30,
                  ),
                  Icon(
                    Icons.all_out_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.wifi_tethering_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.tonality_outlined,
                    size: 30,
                  ),
                ]),
          ),
          body: TabBarView(controller: _tabController, children: const [
            Center(
                child: Text('Tab 1',
                    style: TextStyle(color: white, fontSize: 30))),
            Center(
                child: Text('Tab 2',
                    style: TextStyle(color: white, fontSize: 30))),
            Center(
                child: Text('Tab 3',
                    style: TextStyle(color: white, fontSize: 30))),
            Center(
                child: Text('Tab 4',
                    style: TextStyle(color: white, fontSize: 30))),
            Center(
                child:
                    Text('Tab 5', style: TextStyle(color: white, fontSize: 30)))
          ])),
    );
  }
}
