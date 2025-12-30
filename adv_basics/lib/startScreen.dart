import 'package:adv_basics/game_button.dart';
import 'package:adv_basics/main.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 200),
          Padding(padding: EdgeInsets.only(top: 100)),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 100),
          GameButton(),
        ],
      ),
    );
  }
}
