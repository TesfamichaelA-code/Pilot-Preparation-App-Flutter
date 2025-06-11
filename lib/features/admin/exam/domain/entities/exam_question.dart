class ExamQuestion {
  final String id;
  final String examId;
  final String text;
  final List<String> options;
  final int correctAnswer;
  final String explanation;
  final DateTime createdAt;
  final DateTime updatedAt;

  const ExamQuestion({
    required this.id,
    required this.examId,
    required this.text,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ExamQuestion.fromJson(Map<String, dynamic> json) {
    return ExamQuestion(
      id: json['_id'] as String,
      examId: json['examId'] as String,
      text: json['text'] as String,
      options: List<String>.from(json['options'] as List),
      correctAnswer: json['correctAnswer'] as int,
      explanation: json['explanation'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'examId': examId,
      'text': text,
      'options': options,
      'correctAnswer': correctAnswer,
      'explanation': explanation,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
} 