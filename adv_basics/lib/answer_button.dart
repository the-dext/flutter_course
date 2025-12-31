import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final dynamic answerText;
  final void Function() onPressed;

  const AnswerButton({this.answerText, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 45, 11, 100),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(40),
        ),
      ),
      child: Text('Answer 1', style: TextStyle(color: Colors.white)),
    );
  }
}
