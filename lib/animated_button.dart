import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_practicr/Utility/app_color.dart';

class AnimtedButtonFromCenter extends StatefulWidget {
  const AnimtedButtonFromCenter({super.key});

  @override
  State<AnimtedButtonFromCenter> createState() =>
      _AnimtedButtonFromCenterState();
}

class _AnimtedButtonFromCenterState extends State<AnimtedButtonFromCenter>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double width = 150, height = 70;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onMouseEnter(PointerEnterEvent event) {
    _animationController.forward(); 
    setState(() {
      isHovered = true;
    });
  }

  void _onMouseExit(PointerExitEvent event) {
    _animationController.reverse(); 
    setState(() {
      isHovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              splashColor: Colors.transparent,
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused)
                      ? null
                      : Colors.transparent;
                },
              ),
              onTap: () {},
              child: MouseRegion(
                onEnter: _onMouseEnter,
                onExit: _onMouseExit,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Container(
                        color: green,
                        width: width,
                        height: height,
                      ),
                    ),
                    Positioned(
                      left:
                          width / 2 - _animationController.value * (width / 2),
                      top: 3,
                      child: Container(
                        width: _animationController.value * width,
                        height: height,
                        decoration: const BoxDecoration(
                          color: darkGrey,
                        
                        ),
                      ),
                    ),
                    const Align(
                      child: AnimatedDefaultTextStyle(
                        style: TextStyle(
                          color:Colors.white
                        ),
                        duration: Duration(milliseconds: 200),
                        child: Text(
                          'BUY Now',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
