import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AnimatedCards extends StatefulWidget {
  const AnimatedCards({super.key});

  @override
  State<AnimatedCards> createState() => _AnimatedCardsState();
}

class _AnimatedCardsState extends State<AnimatedCards>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  bool isSelected = false;
  late AnimationController _animationController;

  List<Gradient> gradients = [
    const LinearGradient(
        colors: [red, orange],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    const LinearGradient(
        colors: [blue, purple],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    const LinearGradient(
        colors: [green, cyan],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    const LinearGradient(
        colors: [blueGrey, redaccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    const LinearGradient(
        colors: [pink, darkBlue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkGrey,
      appBar: AppBar(
        title: const Text(
          'Concept 4',
          style: TextStyle(color: white),
        ),
        backgroundColor: transparent,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = false;
                });
              },
              child: Icon(Icons.line_weight, color: isSelected ? grey : golden),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = true;
                });
              },
              child: Icon(Icons.grid_view_sharp,
                  color: isSelected ? golden : grey),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: isSelected
            ? Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: dim.height * 0.8,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: gradients.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: gradients[index],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: transparent,
                                    maxRadius: 30,
                                    child: Image.asset('asset/images/yes.png'),
                                  ),
                                  SizedBox(width: dim.width * 0.05),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Martha Wix',
                                        style: TextStyle(
                                            color: white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            fontStyle: FontStyle.italic),
                                      ),
                                      Text(
                                        'Chef',
                                        style: TextStyle(
                                          color: white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                  indent: 200, thickness: 3, color: greyShade),
                              SizedBox(height: dim.height * 0.03),
                              const Text(
                                'Roast Veggies',
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: dim.height * 0.01),
                              const Text(
                                'Topping: sauce, mayonnaaise, cheese',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: dim.height * 0.05),
                              Center(
                                  child: Container(
                                      height: 200,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Image.asset(
                                        'asset/images/food.png',
                                        fit: BoxFit.cover,
                                        height: double.infinity,
                                        width: double.infinity,
                                      ))),
                              SizedBox(height: dim.height * 0.01),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Center(
                                    child: Text(
                                      '\$ 15.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            : Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: dim.height * 0.62,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: gradients.length,
                    itemBuilder: (context, index) {
                      return AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          double value = 1.0;
                          if (_pageController.position.haveDimensions) {
                            value = _pageController.page! - index;
                            value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
                          }
                          return Transform.scale(
                            scale: Curves.easeOut.transform(value),
                            child: child,
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(200),
                                  topRight: Radius.circular(20),
                                ),
                                gradient: gradients[index],
                              ),
                            ),
                            Positioned(
                              left: 30,
                              bottom: 60,
                              child: Container(
                                width: dim.width * 0.93,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200),
                                  color: transparent,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/images/food.png',
                                      height: dim.height * 0.32,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(height: dim.height * 0.04),
                                    const Text(
                                      'Roast Veggies',
                                      style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                    SizedBox(height: dim.height * 0.026),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: lightGrey,
                                          size: 15,
                                        ),
                                        SizedBox(width: dim.width * 0.01),
                                        Text(
                                          'New York',
                                          style: TextStyle(
                                            color: lightGrey,
                                            fontSize: 18,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: dim.height * 0.05),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 40),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            '255 Cal',
                                            style: TextStyle(
                                              color: white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 65,
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: const Center(
                                              child: Text(
                                                '\$ 15.00',
                                                style: TextStyle(
                                                  color: darkGrey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
      ),
    );
  }
}

