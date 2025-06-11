import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/interview_question.dart';

part 'interview_state.freezed.dart';

@freezed
class InterviewState with _$InterviewState {
  const factory InterviewState({
    @Default(false) bool isLoading,
    String? error,
    InterviewQuestion? createdQuestion,
  }) = _InterviewState;
} 