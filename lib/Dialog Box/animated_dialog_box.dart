import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AnimatedDialogBox extends StatelessWidget {
  const AnimatedDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              dialogButton(
                color: lightGreen,
                text: 'Success',
                onTap: () {
                  _showDialog(
                      context: context,
                      buttonColor: lightGreen,
                      icon: Icons.task_alt,
                      iconColor: lightGreen);
                },
              ),
              const SizedBox(height: 10),
              dialogButton(
                color: lightGreen,
                text: 'Error',
                onTap: () {
                  _showDialog(
                      context: context,
                      buttonColor: red,
                      icon: Icons.error,
                      iconColor: red);
                },
              ),
              const SizedBox(height: 10),
              dialogButton(
                color: lightGreen,
                text: 'Warning',
                onTap: () {
                  _showDialog(
                      context: context,
                      buttonColor: orange,
                      icon: Icons.warning,
                      iconColor: orange);
                },
              ),
              const SizedBox(height: 10),
              dialogButton(
                color: lightGreen,
                text: 'Info',
                onTap: () {
                  _showDialog(
                      context: context,
                      buttonColor: blue,
                      icon: Icons.info,
                      iconColor: blue);
                },
              ),
              const SizedBox(height: 10),
              dialogButton(
                color: lightGreen,
                text: 'Confirm',
                onTap: () {
                  _showDialog(
                      context: context,
                      buttonColor: blue,
                      icon: Icons.info_outline,
                      iconColor: blue);
                },
              ),
              const SizedBox(height: 10),
              dialogButton(
                color: lightGreen,
                text: 'Loading',
                onTap: () {
                  _showDialog(
                      context: context,
                      buttonColor: darkGrey,
                      icon: Icons.change_circle_sharp,
                      iconColor: darkGrey);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog({context, buttonColor, icon, iconColor}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: iconColor,
                        size: 60,
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Ok',
                          style: TextStyle(color: white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget dialogButton({color, text, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
