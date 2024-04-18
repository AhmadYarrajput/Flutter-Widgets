import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class ToastMessage extends StatefulWidget {
  const ToastMessage({super.key});

  @override
  State<ToastMessage> createState() => _ToastMessageState();
}

class _ToastMessageState extends State<ToastMessage> {
  late OverlayEntry overlayEntry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'Toast',
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
              onPressed: () {
                showCustomToast();
              },
              style: ElevatedButton.styleFrom(backgroundColor: purple),
              child: const Text(
                'Show Toast',
                style: TextStyle(color: white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showCustomToast() {
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 50.0,
        width: MediaQuery.of(context).size.width,
        child: Material(
          color: transparent,
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: purple,
            ),
            child: const Text(
              'This is a custom toast message',
              style: TextStyle(color: white),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry);

    Timer(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }
}
