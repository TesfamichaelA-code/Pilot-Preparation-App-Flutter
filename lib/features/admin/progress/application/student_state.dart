import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/students_response.dart';

part 'student_state.freezed.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState({
    StudentsResponse? students,
    @Default(false) bool isLoading,
    String? error,
  }) = _StudentState;

  factory StudentState.initial() => const StudentState();
  
  factory StudentState.loading() => const StudentState(isLoading: true);
  
  factory StudentState.error(String message) => StudentState(
    error: message,
    isLoading: false,
  );
  
  factory StudentState.loaded(StudentsResponse students) => StudentState(
    students: students,
    isLoading: false,
    error: null,
  );
} 