class Quiz {
  final String statement;
  final List<QuizOption> options;
  final String correctOptionId;
  final bool isHasImage;

  Quiz(
      {required this.statement,
      this.isHasImage = false,
      required this.options,
      required this.correctOptionId});
}

class QuizOption {
  final String id;
  final String option;

  QuizOption(this.id, this.option);
}
