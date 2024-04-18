import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_practicr/Utility/app_color.dart';
import 'package:ui_practicr/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: white),
        )),
        debugShowCheckedModeBanner: false,
        home: const MainPage());
  }
}
