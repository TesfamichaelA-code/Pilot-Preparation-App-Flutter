import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/exam.dart';
import '../../domain/entities/create_exam_request.dart';
import '../../domain/entities/exam_question.dart';
import '../../domain/entities/create_question_request.dart';
import '../../domain/repositories/exam_repository.dart';
import '../datasources/exam_remote_data_source.dart';

@Injectable(as: ExamRepository)
class ExamRepositoryImpl implements ExamRepository {
  final ExamRemoteDataSource _remoteDataSource;

  ExamRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, Exam>> createExam(CreateExamRequest request) async {
    try {
      final exam = await _remoteDataSource.createExam(request);
      return Right(exam);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }

  @override
  Future<Either<String, List<Exam>>> getAllExams() async {
    try {
      final exams = await _remoteDataSource.getAllExams();
      return Right(exams);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }

  @override
  Future<Either<String, Unit>> deleteExam(String examId) async {
    try {
      await _remoteDataSource.deleteExam(examId);
      return const Right(unit);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }

  @override
  Future<Either<String, Exam>> updateExam(String examId, CreateExamRequest request) async {
    try {
      final exam = await _remoteDataSource.updateExam(examId, request);
      return Right(exam);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }

  @override
  Future<Either<String, Exam>> getExamById(String id) async {
    try {
      final exam = await _remoteDataSource.getExamById(id);
      return Right(exam);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, ExamQuestion>> createQuestion(String examId, CreateQuestionRequest request) async {
    try {
      final question = await _remoteDataSource.createQuestion(examId, request);
      return Right(question);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<ExamQuestion>>> getQuestionsByExamId(String examId) async {
    try {
      final questions = await _remoteDataSource.getQuestionsByExamId(examId);
      return Right(questions);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> deleteQuestion(String examId, String questionId) async {
    try {
      final deleted = await _remoteDataSource.deleteQuestion(examId, questionId);
      return Right(deleted);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, ExamQuestion>> updateQuestion(
    String examId,
    String questionId,
    CreateQuestionRequest request,
  ) async {
    try {
      final question = await _remoteDataSource.updateQuestion(examId, questionId, request);
      return Right(question);
    } catch (e) {
      return Left(e.toString());
    }
  }
} 