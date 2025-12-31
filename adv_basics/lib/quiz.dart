import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    // set state causes build to run again,
    // and build uses the active screen variable.
    // causing a switch.
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [
                Colors.black,
                Colors.deepPurpleAccent,
                Colors.deepPurple,
              ],
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : QuestionsScreen(),
        ),
      ),
    );
  }
}
