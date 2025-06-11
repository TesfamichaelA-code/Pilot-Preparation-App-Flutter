import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/question.dart';
import '../../../../../core/network/dio_client.dart';

abstract class QuestionRemoteDataSource {
  Future<List<Question>> getQuestions(String examId);
}

@Injectable(as: QuestionRemoteDataSource)
class QuestionRemoteDataSourceImpl implements QuestionRemoteDataSource {
  final DioClient _dioClient;

  QuestionRemoteDataSourceImpl(this._dioClient);

  @override
  Future<List<Question>> getQuestions(String examId) async {
    try {
      final response = await _dioClient.get('/exams/$examId/questions');
      if (response.statusCode == 200) {
        final data = response.data['data'] as List;
        return data.map((json) {
          return Question(
            id: json['_id'] as String,
            examId: json['examId'] as String,
            text: json['text'] as String,
            options: (json['options'] as List).cast<String>(),
            correctAnswer: json['correctAnswer'] as int,
            explanation: json['explanation'] as String,
            createdAt: DateTime.parse(json['createdAt'] as String),
            updatedAt: DateTime.parse(json['updatedAt'] as String),
          );
        }).toList();
      }
      throw Exception(response.data['message'] ?? 'Failed to fetch questions');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to fetch questions. Please check your internet connection.');
    }
  }
} 