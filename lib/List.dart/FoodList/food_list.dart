import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<String> imgs = [
    'https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?cs=srgb&dl=pexels-chan-walrus-941861.jpg&fm=jpg',
    'https://c0.wallpaperflare.com/preview/540/1016/960/cheese-food-meal-dinner.jpg',
    'https://img.freepik.com/premium-photo/photo-closeup-shot-delicious-food_829042-89.jpg',
    'https://cdn.wallpapersafari.com/31/94/IpjNTA.jpg',
  ];
  List<String> titles = [
    'Restaurant',
    'Street Food',
    'Home Made',
    'Catering Service',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('Food List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: imgs.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 140,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 7)
              ], borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imgs[index],
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                  Center(
                    child: Text(
                      titles[index],
                      style: const TextStyle(
                          color: white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
