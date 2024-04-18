import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class FoodCards extends StatefulWidget {
  const FoodCards({super.key});

  @override
  State<FoodCards> createState() => _FoodCardsState();
}

class _FoodCardsState extends State<FoodCards> {
  List<String> images = [
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa-CUaad3Ue8HVAKYEvRXvTBt3oUHUEB4d9Q&usqp=CAU',
  ];
  List<String> hotels = [
    'Avocado recipe',
    'Guava recipe',
    'Orange recipe',
  ];
  List<Color> allColors = [lightBlue, green, purple, blue, lightPink];
  List<String> cityNames = [
    'America',
    'Thailand',
    'England',
    'Italia',
    'Spanyol'
  ];

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: greyShade,
        appBar: AppBar(
          backgroundColor: blueGrey,
          iconTheme: const IconThemeData(color: white),
          title: const Text(
            'Food Cards',
            style: TextStyle(color: white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: dim.width * 0.05),
            child: Column(children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Card(
                      color: white,
                      child: Container(
                        width: dim.width * 0.65,
                        height: dim.height * 0.3,
                        margin: EdgeInsets.all(dim.width * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              ),
                              child: SizedBox(
                                height: dim.height * 0.19,
                                width: double.infinity,
                                child: Image.network(
                                  images[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: dim.height * 0.01),
                            Padding(
                              padding: EdgeInsets.all(dim.height * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hotels[index],
                                    style: TextStyle(
                                      fontSize: dim.height * 0.01,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text('4.2'),
                                      Icon(Icons.star,
                                          color: blue, size: dim.height * 0.01),
                                      Icon(Icons.star,
                                          color: blue, size: dim.height * 0.01),
                                      Icon(Icons.star,
                                          color: blue, size: dim.height * 0.01),
                                      Icon(Icons.star_half,
                                          color: blue, size: dim.height * 0.01),
                                      Icon(Icons.star,
                                          color: lightGrey,
                                          size: dim.height * 0.01),
                                      const Text(
                                        '(200)',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: dim.width * 0.01),
                              child:  Text(
                                '150 Cal',
                                style: TextStyle(
                                  color: green,
                                  fontSize: dim.height * 0.01,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: dim.height * 0.01),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: dim.width * 0.05),
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => Card(
                        color: allColors[index],
                        child: SizedBox(
                          width: 220,
                          height: 250,
                          child: Padding(
                            padding: EdgeInsets.all(dim.height * 0.01),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cityNames[index],
                                  style: const TextStyle(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 50),
                                const Text(
                                  'Simple and powerful apps hybrid application',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 15,
                                  ),
                                ),
                                const Spacer(),
                                const Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.account_balance,
                                    color: white,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  Card(
                    color: white,
                    elevation: 5,
                    child: Container(
                      height: 250,
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa-CUaad3Ue8HVAKYEvRXvTBt3oUHUEB4d9Q&usqp=CAU',
                              height: 150,
                              fit: BoxFit.fill,
                              width: double.infinity,
                              color: Colors.black45,
                              colorBlendMode: BlendMode.colorBurn,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(dim.height * 0.01),
                            child: const Text(
                              'Fried Rice Egg Ricas Easy Steps',
                              style: TextStyle(
                                color: black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(dim.height * 0.01),
                            child: const Text(
                              'Fried rice is a quick and delicious way to transform\nleftovers into something delicious! Though we\nsometimes think of certain ingredients being typical...',
                              style: TextStyle(
                                color: grey,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 70,
                    left: 145,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(115, 255, 255, 255),
                      child: Icon(
                        Icons.play_arrow,
                        color: white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 5,
                color: white,
                child: SizedBox(
                  height: dim.height * 0.34,
                  width: 330,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(dim.height * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Personal Card',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.015,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.date_range,
                              color: grey,
                              size: dim.height * 0.02,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(dim.height * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Card Number',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.014,
                                fontWeight: FontWeight.bold,
                                color: grey,
                              ),
                            ),
                            Text(
                              'Exp',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.013,
                                fontWeight: FontWeight.bold,
                                color: grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(dim.height * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '4215 - 4353 - 3215 - 4213',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.014,
                                color: black,
                              ),
                            ),
                            Text(
                              '12/29',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.014,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(dim.height * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Card Name',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.014,
                                fontWeight: FontWeight.bold,
                                color: grey,
                              ),
                            ),
                            Text(
                              'CVV/CVC',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.014,
                                fontWeight: FontWeight.bold,
                                color: grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(dim.height * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Alissa Hearth',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.014,
                                color: black,
                              ),
                            ),
                            Text(
                              '768',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: dim.height * 0.014,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 54,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: dim.height * 0.014,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          child: Image.network(
                            'https://media.istockphoto.com/id/515437512/photo/bowl-of-granola-with-yogurt-and-berries.jpg?s=612x612&w=0&k=20&c=IFUMg2wnhBhHP_OTDZwyB6jXJSt6gaqbFChOPh0dU0w=',
                            height: 170,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Home Made Yogurt Blueberry White...',
                            style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Fried rice is a quick and delicious way to transform\nleftovers into something delicious! Though we\nsometimes think of certain ingredients being typical...',
                            style: TextStyle(
                              color: black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        color: grey,
                                        size: 14,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '60 Minute',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: yellow,
                                        size: 14,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '4.3',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ]))
                      ])),
              SizedBox(height: dim.height * 0.03),
              Card(
                elevation: 5,
                child: Container(
                  height: dim.height * 0.13,
                  width: 270,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.home,
                        color: yellow,
                        size: 30,
                      ),
                      SizedBox(width: dim.width * 0.05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Delivery Adress',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: grey,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(height: dim.height * 0.01),
                          const Text('Home, Work & Other Adress',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: grey,
                                  fontStyle: FontStyle.italic)),
                          const Text('House No: 43, 2nd Floor Sector 18, ...',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                  fontStyle: FontStyle.italic)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: dim.height * 0.03),
            ])));
  }
}
