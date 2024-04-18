// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui_practicr/Chips/ChipsDialogBox/chips_dialog_box.dart';
import 'package:ui_practicr/Chips/ChipsList/chips_listview.dart';
import 'package:ui_practicr/Chips/ChipsTabs/selected_chips.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AllChips extends StatelessWidget {
  const AllChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'Chips',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SelectedChips()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer, blurRadius: 5, color: darkGrey)
                    ], borderRadius: BorderRadius.circular(10), color: darkGrey),
                    child: const Center(
                        child: Text(
                      'List View Chips',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SelectableChipsTabs()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer, blurRadius: 5, color: darkGreen)
                    ], borderRadius: BorderRadius.circular(10), color: darkGreen),
                    child: const Center(
                        child: Text(
                      'Selectable chips',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChipsDialogBox()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.outer, blurRadius: 5, color: purple)
                    ], borderRadius: BorderRadius.circular(10), color: purple),
                    child: const Center(
                        child: Text(
                      'Chips Dialog Box',
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
