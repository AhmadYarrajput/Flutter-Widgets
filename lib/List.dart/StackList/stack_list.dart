import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class StackList extends StatefulWidget {
  const StackList({super.key});

  @override
  State<StackList> createState() => _StackListState();
}

class _StackListState extends State<StackList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('Stack List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 245,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          child: Image.asset(
                            'asset/images/hotel.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Grand Hotel Start',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.star, size: 15, color: blue),
                            Icon(Icons.star, size: 15, color: blue),
                            Icon(Icons.star, size: 15, color: blue),
                            Icon(Icons.star, size: 15, color: blue),
                            Icon(Icons.star_half, size: 15, color: blue),
                            SizedBox(width: 5),
                            Text(
                              '(4.4)',
                              style: TextStyle(
                                color: grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 170),
                            Column(
                              children: [
                                Text(
                                  "\$150",
                                  style: TextStyle(
                                    color: blue,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'per night',
                                  style: TextStyle(
                                    color: grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
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
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 15,
                  child: CircleAvatar(
                    backgroundColor: transparentshade,
                    child: const Icon(
                      Icons.favorite_outline,
                      color: white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
