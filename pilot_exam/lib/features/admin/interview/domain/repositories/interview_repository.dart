import 'package:dartz/dartz.dart';
import '../entities/interview_question.dart';
import '../entities/create_interview_question_request.dart';
 
abstract class InterviewRepository {
  Future<Either<String, InterviewQuestion>> createInterviewQuestion(CreateInterviewQuestionRequest request);
} 