import 'package:flutter/material.dart';
import 'package:ui_practicr/ExternalPackages/Shimmer/shimmer_pkg.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class ShimmerEffects extends StatefulWidget {
  const ShimmerEffects({super.key});

  @override
  State<ShimmerEffects> createState() => _ShimmerEffectsState();
}

class _ShimmerEffectsState extends State<ShimmerEffects> {
  bool enable = true;
  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      enable = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('Chat List'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              if (enable) {
                return Shimmer.fromColors(
                  baseColor: lightGrey,
                  highlightColor: Colors.grey.shade100,
                  enabled: enable,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundColor: white,
                    ),
                    title: Container(
                      height: 10,
                      width: 100,
                      color: white,
                    ),
                    subtitle: Container(
                      height: 10,
                      width: 100,
                      color: white,
                    ),
                  ),
                );
              } else {
                return Shimmer.fromColors(
                  baseColor: black,
                  highlightColor: black,
                  enabled: enable,
                  child: const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: white,
                    ),
                    title: Text('Hey Buddy'),
                    subtitle: Text('How are u?'),
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
