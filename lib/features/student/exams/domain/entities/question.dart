import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String id,
    required String examId,
    required String text,
    required List<String> options,
    required int correctAnswer,
    required String explanation,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
} 