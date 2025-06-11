import 'package:dio/dio.dart';
import '../../domain/entities/admin_student_progress.dart';
import 'admin_progress_data_source.dart';

class AdminProgressRemoteDataSourceImpl implements AdminProgressDataSource {
  final Dio dio;

  AdminProgressRemoteDataSourceImpl(this.dio);

  @override
  Future<AdminStudentProgress> getStudentProgress({required String studentId, String? sortDirection}) async {
    final response = await dio.get(
      '/admin/students/$studentId/progress',
      queryParameters: sortDirection != null && sortDirection.isNotEmpty
          ? {'sortDirection': sortDirection}
          : null,
    );
    return AdminStudentProgress.fromJson(response.data['data']);
  }
} 