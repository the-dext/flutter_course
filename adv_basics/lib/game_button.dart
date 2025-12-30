import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  const GameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: Text(
        "Start Quiz",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
