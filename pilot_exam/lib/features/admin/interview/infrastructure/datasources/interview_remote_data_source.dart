import 'package:dio/dio.dart';
import '../../domain/entities/interview_question.dart';
import '../../domain/entities/create_interview_question_request.dart';

abstract class InterviewRemoteDataSource {
  Future<InterviewQuestion> createInterviewQuestion(CreateInterviewQuestionRequest request);
}

class InterviewRemoteDataSourceImpl implements InterviewRemoteDataSource {
  final Dio dio;

  InterviewRemoteDataSourceImpl(this.dio);

  @override
  Future<InterviewQuestion> createInterviewQuestion(CreateInterviewQuestionRequest request) async {
    final response = await dio.post(
      '/interviews',
      data: request.toJson(),
    );
    return InterviewQuestion.fromJson(response.data['data']);
  }
} 