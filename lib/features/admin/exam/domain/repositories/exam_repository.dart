import 'package:dartz/dartz.dart';
import '../entities/exam.dart';
import '../entities/create_exam_request.dart';
import '../entities/exam_question.dart';
import '../entities/create_question_request.dart';

abstract class ExamRepository {
  Future<Either<String, Exam>> createExam(CreateExamRequest request);
  Future<Either<String, List<Exam>>> getAllExams();
  Future<Either<String, Exam>> getExamById(String id);
  Future<Either<String, void>> deleteExam(String id);
  Future<Either<String, Exam>> updateExam(String id, CreateExamRequest request);
  Future<Either<String, ExamQuestion>> createQuestion(String examId, CreateQuestionRequest request);
  Future<Either<String, List<ExamQuestion>>> getQuestionsByExamId(String examId);
  Future<Either<String, bool>> deleteQuestion(String examId, String questionId);
  Future<Either<String, ExamQuestion>> updateQuestion(
    String examId,
    String questionId,
    CreateQuestionRequest request,
  );
} 