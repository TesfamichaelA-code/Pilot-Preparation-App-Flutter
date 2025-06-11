import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_stats.freezed.dart';

@freezed
class ProgressStats with _$ProgressStats {
  const factory ProgressStats({
    required int totalExamsTaken,
    required double averageScore,
    required double highestScore,
    required double lowestScore,
    required List<ExamResult> recentResults,
    required List<MonthlyProgress> progressOverTime,
  }) = _ProgressStats;
}

@freezed
class ExamResult with _$ExamResult {
  const factory ExamResult({
    required String id,
    required String userId,
    required ExamInfo examId,
    required double score,
    required int totalQuestions,
    required int correctAnswers,
    required List<AnswerDetail> answerDetails,
    required DateTime completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ExamResult;
}

@freezed
class ExamInfo with _$ExamInfo {
  const factory ExamInfo({
    required String id,
    required String title,
    required String category,
  }) = _ExamInfo;
}

@freezed
class AnswerDetail with _$AnswerDetail {
  const factory AnswerDetail({
    required String questionId,
    required String questionText,
    required int userAnswer,
    required int correctAnswer,
    required bool isCorrect,
  }) = _AnswerDetail;
}

@freezed
class MonthlyProgress with _$MonthlyProgress {
  const factory MonthlyProgress({
    required String month,
    required double totalScore,
    required int count,
    required double averageScore,
  }) = _MonthlyProgress;
} 