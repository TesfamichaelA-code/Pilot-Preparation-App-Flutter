import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_detail.freezed.dart';
part 'answer_detail.g.dart';

@freezed
class AnswerDetail with _$AnswerDetail {
  const factory AnswerDetail({
    @JsonKey(name: 'questionId') required String questionId,
    @JsonKey(name: 'questionText') required String questionText,
    @JsonKey(name: 'userAnswer') required int userAnswer,
    @JsonKey(name: 'correctAnswer') required int correctAnswer,
    @JsonKey(name: 'isCorrect') required bool isCorrect,
  }) = _AnswerDetail;

  factory AnswerDetail.fromJson(Map<String, dynamic> json) => _$AnswerDetailFromJson(json);
} 