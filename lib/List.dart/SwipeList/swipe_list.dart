import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

// ignore: must_be_immutable
class SwipeList extends StatelessWidget {
  SwipeList({super.key});
  List<String> subTitles = [
    'Thanks for downloaded ui kit from jipau',
    'Your transaction done in 21/04/2019',
    'Pending payment',
    'Get special discount for use wallet'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('Swipe List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: subTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(index.toString()),
            background: Container(
              color: Colors.redAccent,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20.0),
            ),
            secondaryBackground: Container(
              color: Colors.redAccent,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
            ),
            onDismissed: (DismissDirection direction) {},
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                'Bank Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(
                subTitles[index],
                style: const TextStyle(color: grey),
              ),
            ),
          );
        },
      ),
    );
  }
}
