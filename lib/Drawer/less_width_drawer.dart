import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class LessWidthDrawer extends StatefulWidget {
  const LessWidthDrawer({super.key});

  @override
  State<LessWidthDrawer> createState() => _LessWidthDrawerState();
}

class _LessWidthDrawerState extends State<LessWidthDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        titleTextStyle: const TextStyle(color: black, fontSize: 25),
        centerTitle: true,
        iconTheme: const IconThemeData(color: black),
      ),
      drawer: Drawer(
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            myListTile(label: 'Home', icon: Icons.home),
            myListTile(label: 'Account', icon: Icons.account_circle),
            myListTile(label: 'Search', icon: Icons.youtube_searched_for),
            myListTile(label: 'Alarm', icon: Icons.alarm),
            myListTile(label: 'Comment', icon: Icons.add_comment),
            const Divider(color: grey, thickness: 0.3),
            myListTile(label: 'Settings', icon: Icons.settings),
            myListTile(label: 'Help', icon: Icons.help),
          ],
        ),
      ),
    );
  }

  myListTile({icon, label}) {
    return ListTile(
      title: Text(label),
      leading: Icon(icon, color: grey),
    );
  }
  // make drawer corners sharp
}
