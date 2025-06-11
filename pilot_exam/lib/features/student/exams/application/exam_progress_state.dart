import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/exam_progress.dart';

part 'exam_progress_state.freezed.dart';

@freezed
class ExamProgressState with _$ExamProgressState {
  const factory ExamProgressState({
    ExamProgress? progress,
    @Default(false) bool isLoading,
    String? error,
  }) = _ExamProgressState;
} 