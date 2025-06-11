import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/exam_progress.dart';
import '../../domain/repositories/exam_progress_repository.dart';
import '../datasources/exam_progress_remote_data_source.dart';

@Injectable(as: ExamProgressRepository)
class ExamProgressRepositoryImpl implements ExamProgressRepository {
  final ExamProgressRemoteDataSource _remoteDataSource;

  ExamProgressRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, ExamProgress>> submitExam({
    required String examId,
    required List<int> answers,
  }) async {
    try {
      final result = await _remoteDataSource.submitExam(examId: examId, answers: answers);
      return right(result);
    } catch (e) {
      return left(e.toString());
    }
  }
} 