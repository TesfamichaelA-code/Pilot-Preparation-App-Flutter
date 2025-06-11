import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart' show debugPrint;
import '../domain/repositories/interview_repository.dart';
import '../infrastructure/providers/interview_providers.dart';
import 'interview_state.dart';

@injectable
class InterviewNotifier extends StateNotifier<InterviewState> {
  final InterviewRepository _interviewRepository;

  InterviewNotifier(this._interviewRepository) : super(const InterviewState());

  Future<void> getAllInterviews() async {
    debugPrint('Fetching all interviews...');
    state = const InterviewState(isLoading: true);
    
    // Clear cache before fetching new data
    (_interviewRepository as dynamic).clearCache();

    final result = await _interviewRepository.getInterviews();
    state = result.fold(
      (error) {
        debugPrint('Error fetching interviews: $error');
        return InterviewState(error: error);
      },
      (interviews) {
        debugPrint('Successfully fetched ${interviews.length} interviews');
        return InterviewState(interviews: interviews);
      },
    );
  }

  void setCategory(String? category) {
    debugPrint('Setting category filter: $category');
    state = state.copyWith(selectedCategory: category);
  }

  void clearFilters() {
    debugPrint('Clearing all filters');
    state = state.copyWith(selectedCategory: null);
  }

  void clearError() {
    debugPrint('Clearing error state');
    state = state.copyWith(error: null);
  }
}

final interviewNotifierProvider =
    StateNotifierProvider<InterviewNotifier, InterviewState>((ref) {
  return InterviewNotifier(ref.watch(interviewRepositoryProvider));
}); 