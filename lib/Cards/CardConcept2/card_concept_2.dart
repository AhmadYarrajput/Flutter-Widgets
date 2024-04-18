import 'package:flutter/material.dart';
import 'package:ui_practicr/ExternalPackages/StaggeredGrid/Rendering/sliver_simple_grid_delegate.dart';
import 'package:ui_practicr/ExternalPackages/StaggeredGrid/Widgets/masonary_grid_view.dart';

import 'package:ui_practicr/Utility/app_color.dart';

class CardsConcept2 extends StatefulWidget {
  const CardsConcept2({super.key});

  @override
  State<CardsConcept2> createState() => _CardsConcept2State();
}

class _CardsConcept2State extends State<CardsConcept2> {
  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvUQM4v_GZtoi5FMUPOe-mfIkR7Kb00XK1iQ&usqp=CAU',
    'https://images7.alphacoders.com/368/368875.jpg',
    'https://www.zedamagazine.com/wp-content/uploads/2018/06/Indian-Food-Samosa-Dish-HD-Wallpapers.jpg',
    'https://w0.peakpx.com/wallpaper/467/393/HD-wallpaper-food-dessert-still-life.jpg',
  ];
  List<String> foodTypes = [
    'Fast Food',
    'Vegetarian',
    'Healthy Food',
    'Low Cardio',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        backgroundColor: blueGrey,
        iconTheme: const IconThemeData(color: white),
        title: const Text(
          'Cards Concept 2',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 460,
                child: MasonryGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: images.length,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(2),
                    child: Stack(
                      children: [
                        Card(
                          elevation: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              images[index],
                              height: 220,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 8,
                          child: Center(
                            child: Text(
                              foodTypes[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 45,
                          left: 15,
                          child: Container(
                            height: 30,
                            width: 115,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(144, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.supervisor_account_rounded,
                                    color: white,
                                  ),
                                ),
                                Text(
                                  '525 People',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    2,
                    (index) => Container(
                      width: 200,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)),
                            child: SizedBox(
                              height: 120,
                              width: double.infinity,
                              child: Image.network(
                                'https://media.istockphoto.com/id/515437512/photo/bowl-of-granola-with-yogurt-and-berries.jpg?s=612x612&w=0&k=20&c=IFUMg2wnhBhHP_OTDZwyB6jXJSt6gaqbFChOPh0dU0w=',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Yougurt Blueberry Chips...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.access_time,
                                        color: grey, size: 15),
                                    SizedBox(width: 5),
                                    Text(
                                      '20 Minute',
                                      style:
                                          TextStyle(fontSize: 10, color: grey),
                                    ),
                                    Spacer(),
                                    Icon(Icons.ac_unit_rounded,
                                        color: grey, size: 15),
                                    SizedBox(width: 5),
                                    Text(
                                      '100 Cal',
                                      style:
                                          TextStyle(fontSize: 10, color: grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: yellow,
                              ),
                              Text(
                                '4.4',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Card(
                      color: white,
                      elevation: 5,
                      child: Container(
                        width: 180,
                        height: 250,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                                child: SizedBox(
                                  height: 130,
                                  width: double.infinity,
                                  child: Image.network(
                                    'https://img1.exportersindia.com/product_images/bc-full/2019/10/6597210/boys-shirts-1570424168-5107169.jpeg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    'T-Shirt Man Cassual',
                                    style: TextStyle(fontSize: 14, color: grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '\$20.00',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '4.4',
                                    style: TextStyle(color: grey),
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: yellow,
                                  ),
                                  Spacer(),
                                  Text(
                                    '213 Sale',
                                    style: TextStyle(color: grey, fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Card(
                      elevation: 5,
                      child: Container(
                        width: 180,
                        decoration: const BoxDecoration(
                          color: white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              'https://static-01.daraz.com.np/p/d9a339ed538452a372d0005ca704a698.png',
                              fit: BoxFit.fill,
                              height: 140,
                              width: double.infinity,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'T-Shirt Anime Cassual',
                                    style: TextStyle(fontSize: 14, color: grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '\$15.00',
                                    style: TextStyle(
                                        color: black,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 10),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '\$12.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: purple,
                                        fontSize: 11),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.star_rate_rounded,
                                          color: yellow, size: 13),
                                      Icon(Icons.star_rate_rounded,
                                          color: yellow, size: 13),
                                      Icon(Icons.star_rate_rounded,
                                          color: yellow, size: 13),
                                      Icon(Icons.star_rate_rounded,
                                          color: yellow, size: 13),
                                      Icon(Icons.star_half_rounded,
                                          color: yellow, size: 13),
                                      Text(
                                        '4.8',
                                        style: TextStyle(
                                            color: grey, fontSize: 11),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 10,
                                      ),
                                      Text(
                                        'United Kingdom',
                                        style: TextStyle(
                                            color: grey, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text('200', style: TextStyle(fontSize: 10)),
                                  SizedBox(height: 5),
                                  SizedBox(
                                    width: 150,
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 12),
                                        child: LinearProgressIndicator(
                                          value: 1,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  green),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Container(
                      width: 180,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.network(
                                  'https://i.pinimg.com/originals/e7/ff/65/e7ff654cee54c6f1fe58279cb56c40ab.jpg',
                                  fit: BoxFit.fill,
                                  height: 160,
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: redaccent,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        topLeft: Radius.circular(10))),
                                child: const Center(
                                    child: Text(
                                  '10%',
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.bold),
                                )),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Canon DSLR DD2020',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: grey,
                                      fontStyle: FontStyle.italic),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '\$300',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      fontSize: 11),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text('5.0',
                                        style: TextStyle(
                                            color: grey, fontSize: 11)),
                                    Icon(Icons.star_rate_rounded,
                                        color: yellow, size: 13),
                                    Spacer(),
                                    Text('200 Sale',
                                        style: TextStyle(
                                            color: grey, fontSize: 11))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
