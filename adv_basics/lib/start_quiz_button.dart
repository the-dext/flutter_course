import 'package:flutter/material.dart';

class StartQuizButton extends StatelessWidget {
  const StartQuizButton(this.onClick, {super.key});

  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onClick,
      label: Text(
        "Start Quiz",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
      icon: Icon(Icons.arrow_right_alt_outlined, size: 50),
    );
  }
}
