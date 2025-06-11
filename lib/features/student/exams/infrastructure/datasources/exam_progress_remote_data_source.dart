import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/exam_progress.dart';
import '../../../../../core/network/dio_client.dart';

abstract class ExamProgressRemoteDataSource {
  Future<ExamProgress> submitExam({
    required String examId,
    required List<int> answers,
  });
}

@Injectable(as: ExamProgressRemoteDataSource)
class ExamProgressRemoteDataSourceImpl implements ExamProgressRemoteDataSource {
  final DioClient _dioClient;

  ExamProgressRemoteDataSourceImpl(this._dioClient);

  @override
  Future<ExamProgress> submitExam({
    required String examId,
    required List<int> answers,
  }) async {
    try {
      final response = await _dioClient.post(
        '/progress/exams/$examId/submit',
        data: {'answers': answers},
      );
      if (response.statusCode == 201) {
        final data = response.data['data'];
        return ExamProgress.fromJson(data);
      }
      throw Exception(response.data['message'] ?? 'Failed to submit exam');
    } on DioException catch (e) {
      print('[DEBUG] DioException occurred during exam submission');
      print('Status code: ${e.response?.statusCode}');
      print('Response data: ${e.response?.data}');
      print('Error message: ${e.message}');
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to submit exam. Please check your internet connection.');
    }
  }
} 