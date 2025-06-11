import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/repositories/i_progress_repository.dart';
import '../infrastructure/providers/progress_providers.dart';
import 'progress_state.dart';
import 'package:flutter/foundation.dart' show debugPrint;

final progressNotifierProvider =
    StateNotifierProvider.autoDispose<ProgressNotifier, ProgressState>(
  (ref) => ProgressNotifier(ref.watch(progressRepositoryProvider)),
);

@injectable
class ProgressNotifier extends StateNotifier<ProgressState> {
  final IProgressRepository _progressRepository;

  ProgressNotifier(this._progressRepository) : super(const ProgressState());

  Future<void> getProgressStats() async {
    debugPrint('Fetching progress stats...');
    state = state.copyWith(isLoading: true, error: null);

    // Clear cache before fetching new data
    clearCache();

    final result = await _progressRepository.getProgressStats();

    state = result.fold(
      (error) {
        debugPrint('Error fetching progress stats: $error');
        return state.copyWith(error: error, isLoading: false);
      },
      (stats) {
        debugPrint('Successfully fetched progress stats');
        return state.copyWith(
          stats: stats,
          isLoading: false,
        );
      },
    );
  }

  // Clear cached stats if needed
  void clearCache() {
    debugPrint('Clearing progress stats cache');
    (_progressRepository as dynamic).clearCache();
  }
} 
