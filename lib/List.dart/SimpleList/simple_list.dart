import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class SimpleList extends StatefulWidget {
  const SimpleList({super.key});

  @override
  State<SimpleList> createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  List<String> titles = [
    'Bank',
    'Credit Card',
    'Paid',
    'Money',
    'Bonus',
    'Income',
    'Location',
    'Exchange',
    'Plan'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('Simple List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 130,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: ListTile(
                title: Text(
                  titles[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: const Text(
                  'Get best promo',
                  style: TextStyle(color: grey, fontWeight: FontWeight.bold),
                ),
                trailing: const Icon(
                  Icons.account_circle,
                  size: 50,
                  color: lightPink,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
