import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  void changeShape() => setState(() {
        _width = getRandom(300) + 70;
        _height = getRandom(300) + 70;
        _color = Color.fromRGBO(getRandom(255).toInt(), getRandom(255).toInt(),
            getRandom(255).toInt(), 1);
        _borderRadiusGeometry = BorderRadius.circular(getRandom(30) + 1);
      });

  double getRandom(int max) => Random().nextInt(max).toDouble();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.elasticOut,
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                  color: _color, borderRadius: _borderRadiusGeometry))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },
        child: const Icon(Icons.play_circle_outline, size: 35),
      ),
    );
  }
}
