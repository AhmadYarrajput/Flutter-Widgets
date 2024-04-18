import 'package:flutter/material.dart';
import 'package:ui_practicr/Toast.dart/snackbar.dart';
import 'package:ui_practicr/Toast.dart/toast.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class ToastSnackBarButtons extends StatelessWidget {
  const ToastSnackBarButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        title: const Text(
          'Toast & Snack Bar',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ToastMessage()),
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
                    'Toast Message',
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
                        builder: (context) => const CustomSnackBar()),
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
                    'Snack Bar',
                    style: TextStyle(fontSize: 20, color: white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
