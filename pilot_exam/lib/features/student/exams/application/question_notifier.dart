import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/repositories/question_repository.dart';
import '../infrastructure/providers/question_providers.dart';
import 'question_state.dart';

final questionNotifierProvider =
    StateNotifierProvider.autoDispose<QuestionNotifier, QuestionState>(
  (ref) => QuestionNotifier(ref.watch(questionRepositoryProvider)),
);

@injectable
class QuestionNotifier extends StateNotifier<QuestionState> {
  final QuestionRepository _questionRepository;

  QuestionNotifier(this._questionRepository) : super(const QuestionState());

  Future<void> getQuestions(String examId) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _questionRepository.getQuestions(examId);

    state = result.fold(
      (error) => state.copyWith(error: error, isLoading: false),
      (questions) => state.copyWith(
        questions: questions,
        isLoading: false,
        selectedAnswers: List.filled(questions.length, null),
      ),
    );
  }

  void selectAnswer(int questionIndex, int answerIndex) {
    if (state.selectedAnswers == null) return;
    
    final newAnswers = List<int?>.from(state.selectedAnswers!);
    newAnswers[questionIndex] = answerIndex;
    
    state = state.copyWith(
      selectedAnswers: newAnswers,
      currentQuestionIndex: questionIndex,
    );
  }

  void goToNextQuestion() {
    if (state.questions == null ||
        state.currentQuestionIndex >= state.questions!.length - 1) return;
    
    state = state.copyWith(
      currentQuestionIndex: state.currentQuestionIndex + 1,
    );
  }

  void goToPreviousQuestion() {
    if (state.currentQuestionIndex <= 0) return;
    
    state = state.copyWith(
      currentQuestionIndex: state.currentQuestionIndex - 1,
    );
  }

  List<bool> getResults() {
    if (state.questions == null || state.selectedAnswers == null) return [];
    
    return List.generate(state.questions!.length, (index) {
      final question = state.questions![index];
      final selectedAnswer = state.selectedAnswers![index];
      return selectedAnswer == question.correctAnswer;
    });
  }
} 