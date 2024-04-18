import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class GenderPage extends StatefulWidget {
  final Function(String) onChipSelected;

  const GenderPage({super.key, required this.onChipSelected});

  @override
  // ignore: library_private_types_in_public_api
  _GenderPageState createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  String selectedChip = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Framework'),
        titleTextStyle: const TextStyle(color: black, fontSize: 25),
        iconTheme: const IconThemeData(color: black),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          selectedChipWidget(label: 'Female'),
          selectedChipWidget(label: 'Male'),
        ],
      ),
    );
  }

  Widget selectedChipWidget({required String label}) {
    return ChoiceChip(
      label: Text(
        label,
        style: const TextStyle(color: grey),
      ),
      selected: selectedChip == label,
      onSelected: (isSelected) {
        setState(() {
          if (isSelected) {
            selectedChip = label;
            widget.onChipSelected(selectedChip);
          } else {
            selectedChip = '';
          }
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: grey),
      ),
    );
  }
}