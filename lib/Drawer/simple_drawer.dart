import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class SimpleDrawer extends StatefulWidget {
  const SimpleDrawer({super.key});

  @override
  State<SimpleDrawer> createState() => _SimpleDrawerState();
}

class _SimpleDrawerState extends State<SimpleDrawer> {
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/img.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: lightGrey,
                    radius: 30,
                    child: const Icon(
                      Icons.person,
                      color: white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Alissa Hearth',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'johnmiller@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            myListTile(label: 'Home', icon: Icons.home),
            myListTile(label: 'Account', icon: Icons.account_circle),
            myListTile(label: 'Search', icon: Icons.youtube_searched_for),
            myListTile(label: 'Alarm', icon: Icons.alarm),
            myListTile(label: 'Comment', icon: Icons.add_comment),
            const Divider(color: grey, thickness: 0.5),
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
}
