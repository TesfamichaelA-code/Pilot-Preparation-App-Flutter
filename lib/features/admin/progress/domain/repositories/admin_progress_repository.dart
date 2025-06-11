import '../entities/admin_student_progress.dart';
 
abstract class AdminProgressRepository {
  Future<AdminStudentProgress> getStudentProgress({required String studentId, String? sortDirection});
} 