import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class ChipsDialogBox extends StatefulWidget {
  const ChipsDialogBox({super.key});

  @override
  State<ChipsDialogBox> createState() => _ChipsDialogBoxState();
}

class _ChipsDialogBoxState extends State<ChipsDialogBox> {
  late List<bool> isSelectedList;
  late List<String> chipLabels;

  @override
  void initState() {
    super.initState();
    isSelectedList = List.generate(20, (index) => false);
    chipLabels = [
      'One',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Eleven',
      'Tweleve',
      'Thirteen',
      'Fourteen',
      'Fifteen',
      'Sixteen',
      'Seventeen',
      'Eighteen',
      'NineTeen',
      'Twenty',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chips Dialog Box'),
        centerTitle: true,
        backgroundColor: purple,
        titleTextStyle: const TextStyle(color: white, fontSize: 25),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('No Text Selected')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          chipsDialog(context);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: purple,
        child: const Icon(
          Icons.add,
          color: white,
        ),
      ),
    );
  }

  chipsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Select Chips'),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
              content: SingleChildScrollView(
                child: Wrap(
                  spacing: 5,
                  children: List.generate(chipLabels.length, (index) {
                    return selectableChip(
                      label: chipLabels[index],
                      index: index,
                      isSelected: isSelectedList[index],
                      onTap: () {
                        setState(() {
                          isSelectedList[index] = !isSelectedList[index];
                        });
                      },
                    );
                  }),
                ),
              ),
              actions: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isSelectedList =
                                List.generate(chipLabels.length, (index) => true);
                          });
                        },
                        child: const Text('All'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isSelectedList =
                                List.generate(chipLabels.length, (index) => false);
                          });
                        },
                        child: const Text('Reset'),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(backgroundColor: blue),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Apply', style: TextStyle(color: white)),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget selectableChip({
    required String label,
    required int index,
    required bool isSelected,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Chip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: transparent),
        ),
        label: Text(
          label,
          style: TextStyle(color: isSelected ? white : black),
        ),
        backgroundColor: isSelected ? blue : white,
      ),
    );
  }
}
