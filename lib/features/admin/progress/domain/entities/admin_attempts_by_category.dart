import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_attempts_by_category.freezed.dart';
part 'admin_attempts_by_category.g.dart';

@freezed
class AdminAttemptsByCategory with _$AdminAttemptsByCategory {
  const factory AdminAttemptsByCategory({
    required String category,
    required int attempts,
    required double averageScore,
  }) = _AdminAttemptsByCategory;

  factory AdminAttemptsByCategory.fromJson(Map<String, dynamic> json) => _$AdminAttemptsByCategoryFromJson(json);
} 