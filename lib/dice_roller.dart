import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoller = 2;
  var secondDiceRoller = 1;

  void rollDice() {
    setState(() {
      currentDiceRoller = randomizer.nextInt(6) + 1;
      secondDiceRoller = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          'assets/images/dice-$currentDiceRoller.png',
          width: 200,
        ),
        Image.asset(
          'assets/images/dice-$secondDiceRoller.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        // const Padding(
        //   padding: EdgeInsets.only(top: 20),
        // ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            textStyle: const TextStyle(
              fontSize: 28,
            ),
            backgroundColor: Colors.yellow,
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
