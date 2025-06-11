import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/question.dart';
import '../../domain/repositories/question_repository.dart';
import '../datasources/remote_question_data_source.dart';

@Injectable(as: QuestionRepository)
class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionRemoteDataSource _remoteDataSource;

  QuestionRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, List<Question>>> getQuestions(String examId) async {
    try {
      final questions = await _remoteDataSource.getQuestions(examId);
      return right(questions);
    } catch (e) {
      return left(e.toString());
    }
  }
} 