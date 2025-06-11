import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/repositories/exam_progress_repository.dart';
import '../infrastructure/providers/exam_progress_providers.dart';
import 'exam_progress_state.dart';


class ExamProgressNotifier extends StateNotifier<ExamProgressState> {
  final ExamProgressRepository _progressRepository;

  ExamProgressNotifier(this._progressRepository) : super(const ExamProgressState());

  Future<void> submitExam({
    required String examId,
    required List<int> answers,
  }) async {
    state = const ExamProgressState(isLoading: true);
    final result = await _progressRepository.submitExam(examId: examId, answers: answers);
    state = result.fold(
      (error) => ExamProgressState(error: error),
      (progress) => ExamProgressState(progress: progress),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

final examProgressNotifierProvider = StateNotifierProvider<ExamProgressNotifier, ExamProgressState>((ref) {
  return ExamProgressNotifier(ref.watch(examProgressRepositoryProvider));
}); 