import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/question.dart';

part 'question_state.freezed.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    List<Question>? questions,
    @Default(false) bool isLoading,
    String? error,
    @Default(-1) int currentQuestionIndex,
    List<int?>? selectedAnswers,
  }) = _QuestionState;
} 