import 'package:freezed_annotation/freezed_annotation.dart';
import 'student.dart';

part 'students_response.freezed.dart';
part 'students_response.g.dart';

@freezed
class StudentsResponse with _$StudentsResponse {
  const factory StudentsResponse({
    required List<Student> data,
    required String status,
    required DateTime timestamp,
  }) = _StudentsResponse;

  factory StudentsResponse.fromJson(Map<String, dynamic> json) => _$StudentsResponseFromJson(json);
} 