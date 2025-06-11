import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/repositories/exam_repository.dart';
import '../infrastructure/providers/exam_providers.dart';
import 'exam_state.dart';

@injectable
class ExamNotifier extends StateNotifier<ExamState> {
  final ExamRepository _examRepository;

  ExamNotifier(this._examRepository) : super(const ExamState());

  Future<void> getAllExams() async {
    state = const ExamState(isLoading: true);
    final result = await _examRepository.getAllExams();
    state = result.fold(
      (error) => ExamState(error: error),
      (exams) => ExamState(exams: exams),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

final examNotifierProvider = StateNotifierProvider<ExamNotifier, ExamState>((ref) {
  return ExamNotifier(ref.watch(examRepositoryProvider));
}); 