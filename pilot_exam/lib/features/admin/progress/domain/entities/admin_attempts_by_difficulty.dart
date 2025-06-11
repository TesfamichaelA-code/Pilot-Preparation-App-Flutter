import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_attempts_by_difficulty.freezed.dart';
part 'admin_attempts_by_difficulty.g.dart';

@freezed
class AdminAttemptsByDifficulty with _$AdminAttemptsByDifficulty {
  const factory AdminAttemptsByDifficulty({
    required String difficulty,
    required int attempts,
    required double averageScore,
  }) = _AdminAttemptsByDifficulty;

  factory AdminAttemptsByDifficulty.fromJson(Map<String, dynamic> json) => _$AdminAttemptsByDifficultyFromJson(json);
} 