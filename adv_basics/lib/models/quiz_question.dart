class QuizQuestion {
  final String text;
  final List<String> answers;

  // constructor with shortcuts to set the instance text and answers
  // to the args passed.
  const QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswers() {
    final shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}
