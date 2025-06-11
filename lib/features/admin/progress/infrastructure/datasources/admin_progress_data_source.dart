import '../../domain/entities/admin_student_progress.dart';
 
abstract class AdminProgressDataSource {
  Future<AdminStudentProgress> getStudentProgress({required String studentId, String? sortDirection});
} 