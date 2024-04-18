import 'package:flutter/material.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class BouncingButton extends StatefulWidget {
  const BouncingButton({super.key});

  @override
  State<BouncingButton> createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<BouncingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late double _scale;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        lowerBound: 0.0,
        upperBound: 1.0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bouncing Button'),
        centerTitle: true,
        iconTheme: const IconThemeData(color: black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTapUp: _onTapUp,
              onTapDown: _onTapDown,
              child: Transform.scale(
                scale: _scale,
                child: animatedButtonUi,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget get animatedButtonUi => Container(
        height: 70,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: const LinearGradient(
                colors: [cyan, red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: const Center(
          child: Text(
            'Press',
            style: TextStyle(
                color: white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      );
  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
