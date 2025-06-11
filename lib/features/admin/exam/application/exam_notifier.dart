import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/repositories/exam_repository.dart';
import '../infrastructure/providers/exam_providers.dart';
import '../domain/entities/create_exam_request.dart';
import '../domain/entities/create_question_request.dart';
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

  Future<void> createExam(CreateExamRequest request) async {
    state = const ExamState(isLoading: true);
    final result = await _examRepository.createExam(request);
    state = result.fold(
      (error) => ExamState(error: error),
      (exam) => ExamState(exams: [exam]),
    );
    // Refresh the list after successful creation
    if (result.isRight()) {
      await getAllExams();
    }
  }

  Future<void> deleteExam(String examId) async {
    state = const ExamState(isLoading: true);
    final result = await _examRepository.deleteExam(examId);
    state = result.fold(
      (error) => ExamState(error: error),
      (_) => const ExamState(),
    );
    // Refresh the list after successful deletion
    if (result.isRight()) {
      await getAllExams();
    }
  }

  Future<void> updateExam(String examId, CreateExamRequest request) async {
    state = const ExamState(isLoading: true);
    final result = await _examRepository.updateExam(examId, request);
    state = result.fold(
      (error) => ExamState(error: error),
      (exam) => ExamState(exams: [exam]),
    );
    // Refresh the list after successful update
    if (result.isRight()) {
      await getAllExams();
    }
  }

  Future<void> createQuestion(String examId, CreateQuestionRequest request) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _examRepository.createQuestion(examId, request);

    result.fold(
      (error) => state = state.copyWith(
        isLoading: false,
        error: error,
      ),
      (question) {
        state = state.copyWith(
          isLoading: false,
          createdQuestion: question,
          questions: [...?state.questions, question],
        );
      },
    );
  }

  Future<void> getQuestionsByExamId(String examId) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _examRepository.getQuestionsByExamId(examId);

    result.fold(
      (error) => state = state.copyWith(
        isLoading: false,
        error: error,
      ),
      (questions) => state = state.copyWith(
        isLoading: false,
        questions: questions,
      ),
    );
  }

  Future<void> deleteQuestion(String examId, String questionId) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _examRepository.deleteQuestion(examId, questionId);

    result.fold(
      (error) => state = state.copyWith(
        isLoading: false,
        error: error,
      ),
      (deleted) {
        // Optionally, refresh the questions list or remove from state.questions
        state = state.copyWith(isLoading: false);
      },
    );
  }

  Future<void> updateQuestion(
    String examId,
    String questionId,
    CreateQuestionRequest request,
  ) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _examRepository.updateQuestion(examId, questionId, request);

    result.fold(
      (error) => state = state.copyWith(
        isLoading: false,
        error: error,
      ),
      (updatedQuestion) {
        // Optionally, refresh the questions list or update state.questions
        state = state.copyWith(isLoading: false);
      },
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

final examNotifierProvider = StateNotifierProvider<ExamNotifier, ExamState>((ref) {
  return ExamNotifier(ref.watch(examRepositoryProvider));
}); 