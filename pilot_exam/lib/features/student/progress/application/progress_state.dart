import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/progress_stats.dart';

part 'progress_state.freezed.dart';

@freezed
class ProgressState with _$ProgressState {
  const factory ProgressState({
    ProgressStats? stats,
    @Default(false) bool isLoading,
    String? error,
  }) = _ProgressState;
} 