import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 600,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: .start,
          children: summaryData.map((summary) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      summary['user_answer'] == summary['correct_answer']
                      ? Colors.green
                      : Colors.red,
                  child: Text(
                    ((summary['question_index'] as int) + 1).toString(),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        summary['question'] as String,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        summary['user_answer'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 114, 232, 3),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        summary['correct_answer'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 94, 255),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
