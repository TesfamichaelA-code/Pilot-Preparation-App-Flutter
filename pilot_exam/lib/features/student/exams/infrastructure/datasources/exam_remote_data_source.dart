import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/exam.dart';
import '../../../../../core/network/dio_client.dart';

abstract class ExamRemoteDataSource {
  Future<List<Exam>> getAllExams();
}

@Injectable(as: ExamRemoteDataSource)
class ExamRemoteDataSourceImpl implements ExamRemoteDataSource {
  final DioClient _dioClient;

  ExamRemoteDataSourceImpl(this._dioClient);

  @override
  Future<List<Exam>> getAllExams() async {
    try {
      final response = await _dioClient.get('/exams');
      if (response.statusCode == 200) {
        final data = response.data['data'] as List;
        return data.map((e) => Exam.fromJson(e)).toList();
      }
      throw Exception(response.data['message'] ?? 'Failed to fetch exams');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to fetch exams. Please check your internet connection.');
    }
  }
} 