import 'package:flutter/material.dart';

import 'dart:math';

int tirerUnDe() {
  Random random = Random();
  return random.nextInt(6) + 1;
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  var randomNumber = 1;

  void rollDice() {
    setState(() {
      randomNumber = tirerUnDe();
      if (randomNumber == 1) {
        activeDiceImage = 'assets/images/dice-1.png';
      }
      if (randomNumber == 2) {
        activeDiceImage = 'assets/images/dice-2.png';
      }
      if (randomNumber == 3) {
        activeDiceImage = 'assets/images/dice-3.png';
      }
      if (randomNumber == 4) {
        activeDiceImage = 'assets/images/dice-4.png';
      }
      if (randomNumber == 5) {
        activeDiceImage = 'assets/images/dice-5.png';
      }
      if (randomNumber == 6) {
        activeDiceImage = 'assets/images/dice-6.png';
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage, // Side of the dice
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll the dice')),
      ],
    );
  }
}
