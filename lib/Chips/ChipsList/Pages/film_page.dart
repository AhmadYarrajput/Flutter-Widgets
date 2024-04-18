import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class FilmPage extends StatefulWidget {
  final Function(String) onChipSelected;

  const FilmPage({super.key, required this.onChipSelected});

  @override
  // ignore: library_private_types_in_public_api
  _FilmPageState createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  String selectedChip = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Framework'),
        titleTextStyle: const TextStyle(color: black, fontSize: 25),
        iconTheme: const IconThemeData(color: black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 10,
          runSpacing: 8,
          children: [
            selectedChipWidget(label: 'Action'),
            selectedChipWidget(label: 'Romance'),
            selectedChipWidget(label: 'Cartoon'),
            selectedChipWidget(label: 'Anime'),
            selectedChipWidget(label: 'Adventure'),
          ],
        ),
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
