import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/progress_stats.dart';
import '../../../../../core/network/dio_client.dart';

abstract class ProgressRemoteDataSource {
  Future<ProgressStats> getProgressStats();
}

@Injectable(as: ProgressRemoteDataSource)
class ProgressRemoteDataSourceImpl implements ProgressRemoteDataSource {
  final DioClient _dioClient;

  ProgressRemoteDataSourceImpl(this._dioClient);

  @override
  Future<ProgressStats> getProgressStats() async {
    try {
      final response = await _dioClient.get('/progress/stats');

      if (response.statusCode == 200 && response.data != null && response.data['data'] != null) {
        final data = response.data['data'];
        return ProgressStats(
          totalExamsTaken: data['totalExamsTaken'] ?? 0,
          averageScore: ((data['averageScore'] as num?) ?? 0).toDouble(),
          highestScore: ((data['highestScore'] as num?) ?? 0).toDouble(),
          lowestScore: ((data['lowestScore'] as num?) ?? 0).toDouble(),
          recentResults: (data['recentResults'] as List<dynamic>?)
              ?.where((e) => e != null && e['examId'] != null)
              .map((e) => ExamResult(
                    id: e['_id'] as String? ?? '',
                    userId: e['userId'] as String? ?? '',
                    examId: ExamInfo(
                      id: e['examId']['_id'] as String? ?? '',
                      title: e['examId']['title'] as String? ?? '',
                      category: e['examId']['category'] as String? ?? '',
                    ),
                    score: ((e['score'] as num?) ?? 0).toDouble(),
                    totalQuestions: e['totalQuestions'] as int? ?? 0,
                    correctAnswers: e['correctAnswers'] as int? ?? 0,
                    answerDetails: (e['answerDetails'] as List<dynamic>?)
                        ?.map((a) => AnswerDetail(
                              questionId: a['questionId'] as String? ?? '',
                              questionText: a['questionText'] as String? ?? '',
                              userAnswer: a['userAnswer'] as int? ?? 0,
                              correctAnswer: a['correctAnswer'] as int? ?? 0,
                              isCorrect: a['isCorrect'] as bool? ?? false,
                            ))
                        .toList() ?? [],
                    completedAt: DateTime.tryParse(e['completedAt'] as String? ?? '') ?? DateTime.now(),
                    createdAt: DateTime.tryParse(e['createdAt'] as String? ?? '') ?? DateTime.now(),
                    updatedAt: DateTime.tryParse(e['updatedAt'] as String? ?? '') ?? DateTime.now(),
                  ))
              .toList() ?? [],
          progressOverTime: (data['progressOverTime'] as List<dynamic>?)
              ?.map((e) => MonthlyProgress(
                    month: e['month'] as String? ?? '',
                    totalScore: ((e['totalScore'] as num?) ?? 0).toDouble(),
                    count: e['count'] as int? ?? 0,
                    averageScore: ((e['averageScore'] as num?) ?? 0).toDouble(),
                  ))
              .toList() ?? [],
        );
      }
      throw Exception(response.data?['message'] ?? 'Failed to fetch progress stats');
    } on DioException catch (e) {
      print('[DEBUG] DioException occurred during progress stats fetch');
      print('Status code: ${e.response?.statusCode}');
      print('Response data: ${e.response?.data}');
      print('Error message: ${e.message}');
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to fetch progress stats. Please check your internet connection.');
    }
  }
} 