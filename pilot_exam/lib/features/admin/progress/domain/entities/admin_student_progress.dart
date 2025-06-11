import 'package:freezed_annotation/freezed_annotation.dart';
import 'admin_student_user.dart';
import 'admin_exam_result.dart';
import 'admin_progress_summary.dart';

part 'admin_student_progress.freezed.dart';
part 'admin_student_progress.g.dart';

@freezed
class AdminStudentProgress with _$AdminStudentProgress {
  const factory AdminStudentProgress({
    required AdminStudentUser user,
    required List<AdminExamResult> examResults,
    required AdminProgressSummary summary,
  }) = _AdminStudentProgress;

  factory AdminStudentProgress.fromJson(Map<String, dynamic> json) => _$AdminStudentProgressFromJson(json);
} 