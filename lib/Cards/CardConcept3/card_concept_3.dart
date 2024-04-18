import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class CardConcept3 extends StatefulWidget {
  const CardConcept3({super.key});

  @override
  State<CardConcept3> createState() => _CardConcept3State();
}

class _CardConcept3State extends State<CardConcept3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        backgroundColor: blueGrey,
        title: const Text('Card Concept 3', style: TextStyle(color: white)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    2,
                    (index) => Container(
                      width: 270,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Image.network(
                              'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YnVpbGRpbmd8ZW58MHx8MHx8fDA%3D',
                              fit: BoxFit.fill,
                              height: 140,
                              width: double.infinity,
                              color: grey,
                              colorBlendMode: BlendMode.darken,
                            ),
                            const Positioned(
                                top: 50,
                                left: 100,
                                child: Text(
                                  'Hotels',
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ))
                          ]),
                          const SizedBox(height: 5),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Best Hotel Choice',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                                  style: TextStyle(color: grey, fontSize: 12.4),
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
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: 210,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://img.freepik.com/premium-photo/office-buildings-tall-up-sky-financial-district_114775-107.jpg',
                          fit: BoxFit.fill,
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.black54,
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                      const Positioned(
                          top: 10,
                          left: 15,
                          child: Text(
                            'Modern',
                            style: TextStyle(
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ))
                    ]),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(4),
                        height: 100,
                        width: 210,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://watermark.lovepik.com/photo/20211120/large/lovepik-shanghai-puxi-atmospheric-business-building-picture_500450997.jpg',
                              fit: BoxFit.fill,
                              height: double.infinity,
                              width: double.infinity,
                              color: Colors.black54,
                              colorBlendMode: BlendMode.darken,
                            ),
                          ),
                          const Positioned(
                              top: 10,
                              left: 15,
                              child: Text(
                                'Ruistic',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ))
                        ]),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4),
                        height: 100,
                        width: 210,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://t3.ftcdn.net/jpg/00/52/14/94/360_F_52149427_zpSBvXruuUbDlrWvrF3d4Z8Pp83OI788.jpg',
                                fit: BoxFit.fill,
                                height: double.infinity,
                                width: double.infinity,
                                color: Colors.black54,
                                colorBlendMode: BlendMode.darken,
                              ),
                            ),
                            const Positioned(
                              top: 10,
                              left: 15,
                              child: Text(
                                'Minimalist',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://t4.ftcdn.net/jpg/05/97/43/45/360_F_597434530_yoUmNzxPUPJfIwwYnLxZm6CC4GuAdf4M.jpg',
                          ))),
                  child: const Center(
                    child: Text(
                      'House',
                      style: TextStyle(
                          color: white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
