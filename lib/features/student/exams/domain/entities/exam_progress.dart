import 'package:freezed_annotation/freezed_annotation.dart';
import 'answer_detail.dart';

part 'exam_progress.freezed.dart';
part 'exam_progress.g.dart';

@freezed
class ExamProgress with _$ExamProgress {
  const factory ExamProgress({
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'examId') required String examId,
    @JsonKey(name: 'score') required int score,
    @JsonKey(name: 'totalQuestions') required int totalQuestions,
    @JsonKey(name: 'correctAnswers') required int correctAnswers,
    @JsonKey(name: 'answerDetails') required List<AnswerDetail> answerDetails,
    @JsonKey(name: 'completedAt') required DateTime completedAt,
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
  }) = _ExamProgress;

  factory ExamProgress.fromJson(Map<String, dynamic> json) => _$ExamProgressFromJson(json);
} 