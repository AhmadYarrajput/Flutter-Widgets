// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class PullDownToRefresh extends StatefulWidget {
  const PullDownToRefresh({super.key});

  @override
  _PullDownToRefreshState createState() => _PullDownToRefreshState();
}

class _PullDownToRefreshState extends State<PullDownToRefresh> {
  int itemCount = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pull Down To Refresh'),
        centerTitle: true,
        iconTheme: const IconThemeData(color: black),
      ),
      body: RefreshIndicator(
        color: red,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
          setState(() {
            itemCount += 5;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {
              final personIndex = index + 1;
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1)),
                  color: greyShade,
                  child: ListTile(
                    title: Text(
                      'Person No : $personIndex',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
