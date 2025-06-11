import 'package:freezed_annotation/freezed_annotation.dart';
import 'admin_progress_over_time.dart';
import 'admin_attempts_by_category.dart';
import 'admin_attempts_by_difficulty.dart';

part 'admin_progress_summary.freezed.dart';
part 'admin_progress_summary.g.dart';

@freezed
class AdminProgressSummary with _$AdminProgressSummary {
  const factory AdminProgressSummary({
    required int totalExamsTaken,
    required double averageScore,
    required List<AdminProgressOverTime> progressOverTime,
    required List<AdminAttemptsByCategory> attemptsByCategory,
    required List<AdminAttemptsByDifficulty> attemptsByDifficulty,
  }) = _AdminProgressSummary;

  factory AdminProgressSummary.fromJson(Map<String, dynamic> json) => _$AdminProgressSummaryFromJson(json);
} 