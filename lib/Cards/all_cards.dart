import 'package:flutter/material.dart';
import 'package:ui_practicr/Cards/AnimatedCards/animated_cards.dart';
import 'package:ui_practicr/Cards/CardConcept2/card_concept_2.dart';
import 'package:ui_practicr/Cards/CardConcept3/card_concept_3.dart';
import 'package:ui_practicr/Cards/FoodCard/food_cards.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AllCards extends StatelessWidget {
  const AllCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cards',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),
      backgroundColor: greyShade,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FoodCards()),
                  );
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        blurStyle: BlurStyle.outer, blurRadius: 5, color: cyan)
                  ], color: cyan, borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Food Card',
                    style: TextStyle(fontSize: 20, color: white),
                  )),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CardsConcept2()),
                  );
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        blurStyle: BlurStyle.outer, blurRadius: 5, color: cyan)
                  ], color: cyan, borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Cards Concept 2',
                    style: TextStyle(fontSize: 20, color: white),
                  )),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CardConcept3()),
                  );
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        blurStyle: BlurStyle.outer, blurRadius: 5, color: cyan)
                  ], color: cyan, borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Cards Concept 3',
                    style: TextStyle(fontSize: 20, color: white),
                  )),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedCards()),
                  );
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        blurStyle: BlurStyle.outer, blurRadius: 5, color: cyan)
                  ], color: cyan, borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Animated Cards',
                    style: TextStyle(fontSize: 20, color: white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
