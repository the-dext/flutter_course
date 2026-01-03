import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class QuizResults extends StatelessWidget {
  const QuizResults({
    super.key,
    required this.chosenAnswers,
    required this.onRestartQuiz,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  final void Function() onRestartQuiz;

  @override
  Widget build(BuildContext context) {
    final summary = getSummaryData();

    final numAnswers = summary.length;
    var numCorrectAnswers = summary.where((x) {
      return x['correct_answer'] == x['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You scored $numCorrectAnswers out of $numAnswers !"),
            const SizedBox(height: 30),
            QuestionsSummary(summary),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                onRestartQuiz();
              },
              child: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
