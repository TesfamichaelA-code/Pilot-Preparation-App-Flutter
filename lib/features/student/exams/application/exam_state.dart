import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/exam.dart';

part 'exam_state.freezed.dart';

@freezed
class ExamState with _$ExamState {
  const factory ExamState({
    List<Exam>? exams,
    @Default(false) bool isLoading,
    String? error,
  }) = _ExamState;
} 