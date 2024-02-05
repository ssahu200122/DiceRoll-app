import 'package:flutter/material.dart';

import 'dart:math';

var randmiser = Random();

class DiceImage extends StatefulWidget {
  const DiceImage({super.key});

  @override
  State<DiceImage> createState() {
    return _DiceImageState();
  }
}

class _DiceImageState extends State<DiceImage> {
  int dicenumber = 1;

  void rollDice() {
    int n = randmiser.nextInt(6) + 1;
    setState(() {
      dicenumber = n;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'resources/dice-images/dice-$dicenumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
          onPressed: rollDice,
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
