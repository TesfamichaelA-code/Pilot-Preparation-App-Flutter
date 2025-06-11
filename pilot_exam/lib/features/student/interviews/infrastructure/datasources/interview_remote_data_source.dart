import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/interview.dart';
import '../../../../../core/network/dio_client.dart';

abstract class InterviewRemoteDataSource {
  Future<List<Interview>> getInterviews();
}

@Injectable(as: InterviewRemoteDataSource)
class InterviewRemoteDataSourceImpl implements InterviewRemoteDataSource {
  final DioClient _dioClient;

  InterviewRemoteDataSourceImpl(this._dioClient);

  @override
  Future<List<Interview>> getInterviews() async {
    try {
      final response = await _dioClient.get('/interviews');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => Interview.fromJson(json)).toList();
      }
      throw Exception(response.data['message'] ?? 'Failed to fetch interviews');
    } on DioException catch (e) {
      print('[DEBUG] DioException occurred during interviews fetch');
      print('Status code: ${e.response?.statusCode}');
      print('Response data: ${e.response?.data}');
      print('Error message: ${e.message}');
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to fetch interviews. Please check your internet connection.');
    }
  }
} 