import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

// ignore: must_be_immutable
class ECommerceGrid extends StatelessWidget {
   ECommerceGrid({super.key});

  List<String> images = [
    'https://shop.ministryoftshirtaffairs.com/cdn/shop/products/q1_b02060dd-3a12-4fcb-8457-5179493ec808.png?v=1674900796&width=1445',
    'https://images.meesho.com/images/products/232827296/ek1sw_512.webp',
    'https://i.pinimg.com/236x/9c/c9/29/9cc9296d63d544026cbbfe7661a49365.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgaITzcGIonFVzq7dP_PzrSpvGM-YJ6t_OCA&usqp=CAU',
    'https://thebobostore.pk/media/mf_webp/jpg/media/catalog/product/cache/8f85c997f89134b103ba9d7bf5592860/4/3/tom-jerry-black-boys-tshirts.webp',
    'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/59d1d247a0855e7654a8594881fa0c03/2/-/2-42-022-1620_1_dfxee7mtrn7lklcz.jpg',
    'https://pepperland.pk/cdn/shop/files/PBTS-423-04_1_800x.jpg?v=1686314555',
    'https://i0.wp.com/www.jordenduck.com/wp-content/uploads/2023/02/The-Boys-Yellow-Tee.jpg?fit=818%2C797&ssl=1',
  ];

  List<String> shirts = [
    'The Boys B & R',
    'PD Boy Shirt',
    'Super Dude',
    'Nike',
    'Tom & Jerry Shirt',
    'BRM Shirt',
    'Take It Easy Shirt',
    'The Boys Yellow',
  ];

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greyShade,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        title: const Text('E-Commerce Grid'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: dim.height * 0.36),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shirts[index],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(' \$ 150'),
                        const Padding(
                          padding: EdgeInsets.only(left: 3),
                          child: Row(
                            children: [
                              Text(
                                '(4.8)',
                                style: TextStyle(fontSize: 10, color: grey),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: yellow,
                                size: 18,
                              ),
                             Spacer(),
                              Text(
                                '932 Sale',
                                style: TextStyle(fontSize: 11, color: grey),
                              )
                            ],
                          ),
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
