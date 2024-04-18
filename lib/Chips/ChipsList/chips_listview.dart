import 'package:flutter/material.dart';
import 'package:ui_practicr/Chips/ChipsList/Pages/film_page.dart';
import 'package:ui_practicr/Chips/ChipsList/Pages/framework_page.dart';
import 'package:ui_practicr/Chips/ChipsList/Pages/gender_page.dart';
import 'package:ui_practicr/Chips/ChipsList/Pages/smartphone_page.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class SelectedChips extends StatefulWidget {
  const SelectedChips({super.key});

  @override
  State<SelectedChips> createState() => _SelectedChipsState();
}

class _SelectedChipsState extends State<SelectedChips> {
  String selectedChip = '';
  String selectedChip1 = '';
  String selectedChip2 = '';
  String selectedChip3 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chips Select'),
        centerTitle: true,
        backgroundColor: purple,
        titleTextStyle: const TextStyle(color: white, fontSize: 25),
      ),
      body: ListView(
        children: [
          myTile(
            title: 'Framework',
            ontap: () async {
              final newSelectedChip = await Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => FrameworkPage(
                    onChipSelected: (selectedChip) {
                      Navigator.pop(context, selectedChip);
                    },
                  ),
                ),
              );
              if (newSelectedChip != null) {
                setState(() {
                  selectedChip = newSelectedChip;
                });
              }
            },
            trailingText: selectedChip.isNotEmpty ? selectedChip : 'Select one',
          ),
          myTile(
            title: 'Gender',
            ontap: () async {
              final newSelectedChip = await Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => GenderPage(
                    onChipSelected: (selectedChip1) {
                      Navigator.pop(context, selectedChip1);
                    },
                  ),
                ),
              );
              if (newSelectedChip != null) {
                setState(() {
                  selectedChip1 = newSelectedChip;
                });
              }
            },
            trailingText:
                selectedChip1.isNotEmpty ? selectedChip1 : 'Select one',
          ),
          myTile(
            title: 'Film',
            ontap: () async {
              final newSelectedChip = await Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => FilmPage(
                    onChipSelected: (selectedChip2) {
                      Navigator.pop(context, selectedChip2);
                    },
                  ),
                ),
              );
              if (newSelectedChip != null) {
                setState(() {
                  selectedChip2 = newSelectedChip;
                });
              }
            },
            trailingText:
                selectedChip2.isNotEmpty ? selectedChip2 : 'Select one',
          ),
          myTile(
            title: 'SmartPhone',
            ontap: () async {
              final newSelectedChip = await Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => SmartPhonePage(
                    onChipSelected: (selectedChip3) {
                      Navigator.pop(context, selectedChip3);
                    },
                  ),
                ),
              );
              if (newSelectedChip != null) {
                setState(() {
                  selectedChip3 = newSelectedChip;
                });
              }
            },
            trailingText:
                selectedChip3.isNotEmpty ? selectedChip3 : 'Select one',
          ),
        ],
      ),
    );
  }

  myTile({title, ontap, trailingText}) {
    return ListTile(
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            trailingText,
            style: const TextStyle(color: grey, fontSize: 13),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: grey,
          )
        ],
      ),
      onTap: ontap,
    );
  }
}
