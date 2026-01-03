import 'package:flutter/material.dart';

class QuizResults extends StatelessWidget {
  const QuizResults({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("You scored !"),
          const SizedBox(height: 30),
          const Text("List of questions and answers"),
          const SizedBox(height: 30),
          TextButton(onPressed: () {}, child: const Text("Restart Quiz")),
        ],
      ),
    );
  }
}
