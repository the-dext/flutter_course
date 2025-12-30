import 'dart:math';

import 'package:fist_app/styled_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceRoll = 2;
  var rand = Random();

  int GetNextNum() {
    return rand.nextInt(6) + 1;
  }
//
  // Rolls the dice.
  void rollDice() {
    // print(next);
    setState(() {
      diceRoll = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceRoll.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 20,),
            textStyle: const TextStyle(letterSpacing: 2),
          ),
          child: StyledText("Roll Dice"),
        ),
      ],
    );
  }
}
