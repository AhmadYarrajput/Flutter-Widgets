import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class IconWithLabelTabBar extends StatefulWidget {
  const IconWithLabelTabBar({super.key});

  @override
  State<IconWithLabelTabBar> createState() => _IconWithLabelTabBarState();
}

class _IconWithLabelTabBarState extends State<IconWithLabelTabBar>
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
      length: 5,
      child: Scaffold(
        backgroundColor: blueGrey,
        appBar: AppBar(
          backgroundColor: transparent,
          title: const Text('Icon & labels Tabs'),
          titleTextStyle: const TextStyle(color: white, fontSize: 25),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: white,
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
              dividerColor: grey,
              indicatorColor: white,
              // indicatorWeight: 0.1,
              unselectedLabelColor: grey,
              labelColor: white,
              labelPadding: const EdgeInsets.only(top: 15),
              controller: _tabController,
              tabs: const [
                Tab(
                  icon: Icon(Icons.do_disturb_on_outlined),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.shopping_bag),
                  text: 'Deals',
                ),
                Tab(
                  icon: Icon(Icons.account_balance_rounded),
                  text: 'Wallet',
                ),
                Tab(
                  icon: Icon(Icons.currency_exchange),
                  text: 'Finance',
                ),
                Tab(
                  icon: Icon(Icons.history),
                  text: 'History',
                ),
              ]),
        ),
        body: TabBarView(controller: _tabController, children: const [
          Center(
              child:
                  Text('Home', style: TextStyle(color: white, fontSize: 30))),
          Center(
              child:
                  Text('Deals', style: TextStyle(color: white, fontSize: 30))),
          Center(
              child:
                  Text('Wallet', style: TextStyle(color: white, fontSize: 30))),
          Center(
              child: Text('Finance',
                  style: TextStyle(color: white, fontSize: 30))),
          Center(
              child:
                  Text('History', style: TextStyle(color: white, fontSize: 30)))
        ]),
      ),
    );
  }
}
