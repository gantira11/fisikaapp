class Quiz {
  final String statement;
  final List<QuizOption> options;
  final String correctOptionId;
  final String imgName;
  final String pembahasan;

  Quiz({
    required this.statement,
    this.imgName = "",
    required this.options,
    required this.correctOptionId,
    required this.pembahasan,
  });
}

class QuizOption {
  final String id;
  final String option;

  QuizOption(this.id, this.option);
}
