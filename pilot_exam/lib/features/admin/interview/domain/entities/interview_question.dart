import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_question.freezed.dart';
part 'interview_question.g.dart';

@freezed
class InterviewQuestion with _$InterviewQuestion {
  const factory InterviewQuestion({
    required String question,
    required String sampleAnswer,
    required String category,
    required String difficulty,
    required String tipsForAnswering,
    required int yearAsked,
    @JsonKey(name: '_id') required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int v,
  }) = _InterviewQuestion;

  factory InterviewQuestion.fromJson(Map<String, dynamic> json) => _$InterviewQuestionFromJson(json);
} 