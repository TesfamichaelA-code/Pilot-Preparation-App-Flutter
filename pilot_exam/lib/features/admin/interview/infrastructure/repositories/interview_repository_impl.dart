import 'package:dartz/dartz.dart';
import '../../domain/entities/interview_question.dart';
import '../../domain/entities/create_interview_question_request.dart';
import '../../domain/repositories/interview_repository.dart';
import '../datasources/interview_remote_data_source.dart';

class InterviewRepositoryImpl implements InterviewRepository {
  final InterviewRemoteDataSource remoteDataSource;

  InterviewRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<String, InterviewQuestion>> createInterviewQuestion(CreateInterviewQuestionRequest request) async {
    try {
      final result = await remoteDataSource.createInterviewQuestion(request);
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }
} 