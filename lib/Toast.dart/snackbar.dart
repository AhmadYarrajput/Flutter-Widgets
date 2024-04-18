import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class CustomSnackBar extends StatefulWidget {
  const CustomSnackBar({super.key});

  @override
  State<CustomSnackBar> createState() => _CustomSnackBarState();
}

class _CustomSnackBarState extends State<CustomSnackBar> {
  // Function to show the custom snackbar
  void _showCustomSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: purple,
        content: const Row(
          children: [
            Icon(
              Icons.info_outline,
              color: white,
            ),
            SizedBox(width: 10),
            Text(
              'This is a custom snackbar!',
              style: TextStyle(color: white),
            ),
          ],
        ),
        action: SnackBarAction(
          label: 'Close',
          textColor: white,
          onPressed: () {},
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'Snack Bar',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _showCustomSnackBar,
              style: ElevatedButton.styleFrom(backgroundColor: purple),
              child: const Text(
                'Show Snack Bar',
                style: TextStyle(color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
