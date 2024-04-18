import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class PaymentList extends StatefulWidget {
  const PaymentList({super.key});

  @override
  State<PaymentList> createState() => _PaymentListState();
}

class _PaymentListState extends State<PaymentList> {
  List<String> title = [
    'Buying PS 5',
    'Photo Course',
    'Car Gas Bill',
    'Buying Template',
    'Golf Course',
    'Buying Quota',
  ];
  List<String> payment = [
    '-\$510',
    '-\$50',
    '-\$210',
    '-\$39',
    '-\$90',
    '-\$50',
  ];
  List<Icon> icons = [
    const Icon(Icons.gamepad, color: white),
    const Icon(Icons.photo_outlined, color: white),
    const Icon(Icons.directions_bus, color: white),
    const Icon(Icons.align_vertical_top, color: white),
    const Icon(Icons.golf_course, color: white),
    const Icon(Icons.call, color: white),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('Payment List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: title.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: purple,
              child: icons[index],
            ),
            title: Text(
              title[index],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: const Text(
              'Monthly Payment',
              style: TextStyle(color: grey, fontSize: 13),
            ),
            trailing: Text(
              payment[index],
              style: const TextStyle(
                  color: red, fontSize: 17, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
