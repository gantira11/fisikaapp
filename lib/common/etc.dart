class Quiz {
  final String statement;
  final List<QuizOption> options;
  final String correctOptionId;

  Quiz(
      {required this.statement,
      required this.options,
      required this.correctOptionId});
}

class QuizOption {
  final String id;
  final String option;

  QuizOption(this.id, this.option);
}
