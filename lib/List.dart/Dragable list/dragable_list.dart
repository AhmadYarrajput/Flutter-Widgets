import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class DragableList extends StatefulWidget {
  const DragableList({super.key});

  @override
  State<DragableList> createState() => _DragableListState();
}

class _DragableListState extends State<DragableList> {
  final List<String> myTiles = [
    'Thank you',
    'Pending payment',
    'Get special discount',
    'Your transaction done in 21/04/2019',
    'Success Account',
    'Discount for use wallet',
    'Discount 10%',
    'Discount 20%',
    'Discount 30%',
    'Discount 40%',
  ];

  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex--;
      }
      final tile = myTiles.removeAt(oldIndex);
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dragable List',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: lightBlue,
      ),
      body: ReorderableListView(
        children: [
          for (final tile in myTiles)
            Card(
              key: ValueKey(tile),
              child: ListTile(
                key: ValueKey(tile),
                title: const Text(
                  'Bank Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(tile),
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex, newIndex),
      ),
    );
  }
}
