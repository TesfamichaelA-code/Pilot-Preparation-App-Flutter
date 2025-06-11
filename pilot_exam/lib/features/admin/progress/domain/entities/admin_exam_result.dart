import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_exam_result.freezed.dart';
part 'admin_exam_result.g.dart';

@freezed
class AdminExamResult with _$AdminExamResult {
  const factory AdminExamResult({
    required String id,
    required String examId,
    required String examTitle,
    required double score,
    required int totalQuestions,
    required int correctAnswers,
    required DateTime completedAt,
  }) = _AdminExamResult;

  factory AdminExamResult.fromJson(Map<String, dynamic> json) => _$AdminExamResultFromJson(json);
} 