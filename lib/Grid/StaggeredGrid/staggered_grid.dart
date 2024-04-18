import 'package:flutter/material.dart';
import 'package:ui_practicr/ExternalPackages/StaggeredGrid/Rendering/sliver_simple_grid_delegate.dart';
import 'package:ui_practicr/ExternalPackages/StaggeredGrid/Widgets/masonary_grid_view.dart';


import 'package:ui_practicr/Utility/app_color.dart';

// ignore: must_be_immutable
class StaggeredGrid extends StatelessWidget {
   StaggeredGrid({super.key});

  List<String> images = [
    'https://shop.ministryoftshirtaffairs.com/cdn/shop/products/q1_b02060dd-3a12-4fcb-8457-5179493ec808.png?v=1674900796&width=1445',
    'https://images.meesho.com/images/products/232827296/ek1sw_512.webp',
    'https://thebobostore.pk/media/mf_webp/jpg/media/catalog/product/cache/8f85c997f89134b103ba9d7bf5592860/4/3/tom-jerry-black-boys-tshirts.webp',
    'https://pepperland.pk/cdn/shop/files/PBTS-423-04_1_800x.jpg?v=1686314555',
    'https://i0.wp.com/www.jordenduck.com/wp-content/uploads/2023/02/The-Boys-Yellow-Tee.jpg?fit=818%2C797&ssl=1',
    'https://www.mother-care.com.pk/cdn/shop/products/RACE.jpg?v=1680620887'
    'https://dafakar.com/cdn/shop/products/unisex-staple-t-shirt-white-front-643483ffb5e29.jpg?v=1681163271',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd4xtdYzbdaMJ-j2yO8206-S31eVSV0pBFYA&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: black),
          title: const Text('Staggered Grid'),
          centerTitle: true,
        ),
        body: MasonryGridView.builder(
            itemCount: images.length,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(images[index]),
                  ),
                )));
  }
}
