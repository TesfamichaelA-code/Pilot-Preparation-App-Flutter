import '../../domain/repositories/admin_progress_repository.dart';
import '../datasources/admin_progress_data_source.dart';
import '../../domain/entities/admin_student_progress.dart';

class AdminProgressRepositoryImpl implements AdminProgressRepository {
  final AdminProgressDataSource remoteDataSource;

  AdminProgressRepositoryImpl({required this.remoteDataSource});

  @override
  Future<AdminStudentProgress> getStudentProgress({required String studentId, String? sortDirection}) async {
    // Call the remote data source to fetch the data
    return await remoteDataSource.getStudentProgress(studentId: studentId, sortDirection: sortDirection);
  }
} 