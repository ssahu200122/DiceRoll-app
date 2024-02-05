import 'package:flutter/material.dart';
import 'package:diceapp/gradient_container.dart';

void main() {
  List<Color> colors = [
    const Color.fromARGB(255, 0, 0, 0),
    const Color.fromARGB(255, 146, 60, 181)
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors),
      ),
    ),
  );
}
