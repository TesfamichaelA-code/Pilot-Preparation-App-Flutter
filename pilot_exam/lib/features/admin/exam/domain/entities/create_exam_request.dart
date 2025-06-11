import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exam_request.freezed.dart';
part 'create_exam_request.g.dart';

@freezed
class CreateExamRequest with _$CreateExamRequest {
  const factory CreateExamRequest({
    required String title,
    required String description,
    required String category,
    required String difficulty,
    required int durationMinutes,
    required bool isActive,
  }) = _CreateExamRequest;

  factory CreateExamRequest.fromJson(Map<String, dynamic> json) => _$CreateExamRequestFromJson(json);
} 