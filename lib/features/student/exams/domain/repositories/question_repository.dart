import 'package:dartz/dartz.dart';
import '../entities/question.dart';

abstract class QuestionRepository {
  Future<Either<String, List<Question>>> getQuestions(String examId);
} 