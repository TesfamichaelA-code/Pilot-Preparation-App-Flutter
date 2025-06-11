import '../domain/entities/admin_student_progress.dart';
import '../domain/repositories/admin_progress_repository.dart';

class GetAdminStudentProgressUseCase {
  final AdminProgressRepository repository;

  GetAdminStudentProgressUseCase(this.repository);

  Future<AdminStudentProgress> call({required String studentId, String? sortDirection}) {
    return repository.getStudentProgress(studentId: studentId, sortDirection: sortDirection);
  }
} 