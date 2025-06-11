import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/exam.dart';
import '../domain/entities/exam_question.dart';

part 'exam_state.freezed.dart';

@freezed
class ExamState with _$ExamState {
  const factory ExamState({
    @Default(false) bool isLoading,
    String? error,
    List<Exam>? exams,
    Exam? selectedExam,
    List<ExamQuestion>? questions,
    ExamQuestion? createdQuestion,
  }) = _ExamState;

  const ExamState._();
} 