import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/repositories/student_repository.dart';
import '../infrastructure/providers/student_providers.dart';
import 'student_state.dart';

@injectable
class StudentNotifier extends StateNotifier<StudentState> {
  final StudentRepository _studentRepository;

  StudentNotifier(this._studentRepository) : super(StudentState.initial());

  Future<void> getAllStudents() async {
    state = StudentState.loading();
    
    try {
      final result = await _studentRepository.getAllStudents();
      
      state = result.fold(
        (error) => StudentState.error(error),
        (response) => StudentState.loaded(response),
      );
    } catch (e) {
      state = StudentState.error('Failed to load students. Please try again.');
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

final studentNotifierProvider = StateNotifierProvider<StudentNotifier, StudentState>((ref) {
  return StudentNotifier(ref.watch(studentRepositoryProvider));
}); 