class CreateQuestionRequest {
  final String text;
  final List<String> options;
  final int correctAnswer;
  final String explanation;

  const CreateQuestionRequest({
    required this.text,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
  });

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'options': options,
      'correctAnswer': correctAnswer,
      'explanation': explanation,
    };
  }
} 