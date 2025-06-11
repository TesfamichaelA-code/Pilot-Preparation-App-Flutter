import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/network/dio_client.dart';
import '../../domain/entities/exam.dart';
import '../../domain/entities/create_exam_request.dart';
import '../../domain/entities/exam_question.dart';
import '../../domain/entities/create_question_request.dart';

abstract class ExamRemoteDataSource {
  Future<Exam> createExam(CreateExamRequest request);
  Future<List<Exam>> getAllExams();
  Future<Exam> getExamById(String id);
  Future<void> deleteExam(String id);
  Future<Exam> updateExam(String id, CreateExamRequest request);
  Future<ExamQuestion> createQuestion(String examId, CreateQuestionRequest request);
  Future<List<ExamQuestion>> getQuestionsByExamId(String examId);
  Future<bool> deleteQuestion(String examId, String questionId);
  Future<ExamQuestion> updateQuestion(String examId, String questionId, CreateQuestionRequest request);
}

@Injectable(as: ExamRemoteDataSource)
class ExamRemoteDataSourceImpl implements ExamRemoteDataSource {
  final DioClient _dioClient;

  ExamRemoteDataSourceImpl(this._dioClient);

  @override
  Future<Exam> createExam(CreateExamRequest request) async {
    try {
      final response = await _dioClient.post(
        '/exams',
        data: request.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        // The API response wraps the exam in a 'data' field
        return Exam.fromJson(response.data['data']);
      }
      throw Exception(response.data['message'] ?? 'Failed to create exam');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to create exam. Please check your internet connection.');
    }
  }

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

  @override
  Future<void> deleteExam(String examId) async {
    try {
      final response = await _dioClient.delete('/exams/$examId');
      if (response.statusCode == 200) {
        return;
      }
      throw Exception(response.data['message'] ?? 'Failed to delete exam');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to delete exam. Please check your internet connection.');
    }
  }

  @override
  Future<Exam> updateExam(String examId, CreateExamRequest request) async {
    try {
      final response = await _dioClient.put(
        '/exams/$examId',
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return Exam.fromJson(response.data['data']);
      }
      throw Exception(response.data['message'] ?? 'Failed to update exam');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to update exam. Please check your internet connection.');
    }
  }

  @override
  Future<ExamQuestion> createQuestion(String examId, CreateQuestionRequest request) async {
    try {
      final response = await _dioClient.post(
        '/exams/$examId/questions',
        data: request.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = response.data['data'] as Map<String, dynamic>;
        return ExamQuestion.fromJson(json);
      }
      throw Exception(response.data['message'] ?? 'Failed to create question');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to create question. Please check your internet connection.');
    }
  }

  @override
  Future<Exam> getExamById(String id) async {
    try {
      final response = await _dioClient.get('/exams/$id');
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;
        return Exam.fromJson(json);
      }
      throw Exception(response.data['message'] ?? 'Failed to get exam');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to get exam. Please check your internet connection.');
    }
  }

  @override
  Future<List<ExamQuestion>> getQuestionsByExamId(String examId) async {
    try {
      final response = await _dioClient.get('/exams/$examId/questions');
      if (response.statusCode == 200) {
        final data = response.data['data'] as List;
        return data.map((json) => ExamQuestion.fromJson(json)).toList();
      }
      throw Exception(response.data['message'] ?? 'Failed to fetch questions');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to fetch questions. Please check your internet connection.');
    }
  }

  @override
  Future<bool> deleteQuestion(String examId, String questionId) async {
    try {
      final response = await _dioClient.delete('/exams/$examId/questions/$questionId');
      if (response.statusCode == 200 && response.data['data']['deleted'] == true) {
        return true;
      }
      return false;
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message ?? 'Failed to delete question');
    }
  }

  @override
  Future<ExamQuestion> updateQuestion(String examId, String questionId, CreateQuestionRequest request) async {
    try {
      final response = await _dioClient.put(
        '/exams/$examId/questions/$questionId',
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return ExamQuestion.fromJson(response.data['data']);
      }
      throw Exception(response.data['message'] ?? 'Failed to update question');
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message ?? 'Failed to update question');
    }
  }
} 