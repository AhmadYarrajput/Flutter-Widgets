import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class SelectableChipsTabs extends StatefulWidget {
  const SelectableChipsTabs({super.key});

  @override
  State<SelectableChipsTabs> createState() => _SelectableChipsTabsState();
}

class _SelectableChipsTabsState extends State<SelectableChipsTabs> {
  late List<bool> isSelectedList;

  @override
  void initState() {
    super.initState();
    isSelectedList = List.generate(5, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text('Selectable Chips Tabs'),
        centerTitle: false,
        backgroundColor: purple,
        titleTextStyle: const TextStyle(color: white, fontSize: 25),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 8,
          children: [
            reuseableChip(label: 'Hello', icon: Icons.alarm, index: 0),
            reuseableChip(label: 'Firoz', icon: Icons.ac_unit, index: 1),
            reuseableChip(label: 'Evan', icon: Icons.man, index: 2),
            reuseableChip(
                label: 'Nadia', icon: Icons.account_balance, index: 3),
            reuseableChip(label: 'Alex', icon: Icons.person, index: 4),
          ],
        ),
      ),
    );
  }

  reuseableChip({required label, required icon, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelectedList[index] = !isSelectedList[index];
        });
      },
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: isSelectedList[index] ? Colors.white : Colors.green,
          ),
        ),
        avatar: Icon(
          icon,
          color: isSelectedList[index] ? Colors.white : Colors.green,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(color: transparent),
        ),
        backgroundColor:
            isSelectedList[index] ? Colors.lightGreen : Colors.white,
      ),
    );
  }
}
