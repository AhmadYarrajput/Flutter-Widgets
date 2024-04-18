import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class HotelGrid extends StatefulWidget {
  const HotelGrid({super.key});

  @override
  State<HotelGrid> createState() => _HotelGridState();
}

class _HotelGridState extends State<HotelGrid> {
  List<String> images = [
    'https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=612x612&w=0&k=20&c=9QtwJC2boq3GFHaeDsKytF4-CavYKQuy1jBD2IRfYKc=',
    'https://c4.wallpaperflare.com/wallpaper/360/515/601/night-in-las-vegas-bellagio-luxury-hotel-casino-hd-wallpapers-for-mobile-phones-laptops-and-pc-1920%C3%971080-wallpaper-preview.jpg',
    'https://images.unsplash.com/photo-1584132967334-10e028bd69f7?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG90ZWxzfGVufDB8fDB8fHww',
    'https://images.pexels.com/photos/594077/pexels-photo-594077.jpeg?cs=srgb&dl=pexels-asman-chema-594077.jpg&fm=jpg',
    'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGhvdGVsc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://c4.wallpaperflare.com/wallpaper/20/164/15/booking-best-hotels-bangkok-tourism-wallpaper-preview.jpg',
    'https://www.wallpapers13.com/wp-content/uploads/2016/02/Hotel-terrace-chairs-ocean-Maldives-Hd-wallpaper-2560x1440.jpg',
    'https://wallpapercave.com/wp/wp12756542.jpg',
    'https://images.pexels.com/photos/261102/pexels-photo-261102.jpeg?cs=srgb&dl=pexels-pixabay-261102.jpg&fm=jpg',
    'https://img.freepik.com/free-photo/beautiful-luxury-outdoor-swimming-pool-hotel-resort_74190-7433.jpg',
  ];
  List<String> hotels = [
    'Lux Hotel Toronto',
    'Grand Hotel Start',
    'Salad Hotel Start',
    'Room Hotel Toronto',
    'Grand Hotel Start',
    'Alexis Hotel',
    'Traveloka Hotel ...',
    'Polksi Hotel Start',
    'Loaks Hotel',
    'Loaks Hotel Start'
  ];
  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('Hotel Grid'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: dim.height * 0.32),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: white,
            margin: const EdgeInsets.all(3),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Image.network(
                      images[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hotels[index],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(' \$ 150'),
                        Row(
                          children: [
                            const Icon(Icons.star, color: blue, size: 15),
                            const Icon(Icons.star, color: blue, size: 15),
                            const Icon(Icons.star, color: blue, size: 15),
                            const Icon(Icons.star_half, color: blue, size: 15),
                            Icon(Icons.star, color: lightGrey, size: 15),
                            const Text(
                              '(3.9)',
                              style: TextStyle(fontSize: 10, color: grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: grey,
                              size: 13,
                            ),
                            Text(
                              'Toronto Canada',
                              style: TextStyle(
                                color: grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
