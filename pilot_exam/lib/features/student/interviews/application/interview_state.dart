import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/interview.dart';

part 'interview_state.freezed.dart';

@freezed
class InterviewState with _$InterviewState {
  const factory InterviewState({
    @Default([]) List<Interview> interviews,
    @Default(false) bool isLoading,
    String? error,
    String? selectedCategory,
  }) = _InterviewState;

  const InterviewState._();

  List<Interview> get filteredInterviews => Interview.filterByCategory(
    interviews,
    selectedCategory,
  );

  List<String> get availableCategories => interviews
    .map((interview) => interview.category)
    .toSet()
    .toList()
    ..sort();
} 