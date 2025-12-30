import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  const GameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () {},
      label: Text(
        "Start Quiz",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
      icon: Icon(Icons.arrow_right_alt_outlined, size: 50),
    );
  }
}
