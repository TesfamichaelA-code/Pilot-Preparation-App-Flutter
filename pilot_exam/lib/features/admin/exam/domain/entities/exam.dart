import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam.freezed.dart';
part 'exam.g.dart';

@freezed
class Exam with _$Exam {
  const factory Exam({
    required String title,
    required String description,
    required String category,
    required String difficulty,
    required int durationMinutes,
    required bool isActive,
    @JsonKey(name: '_id') required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int v,
  }) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
} 