import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/exam.dart';
import '../../domain/repositories/exam_repository.dart';
import '../datasources/exam_remote_data_source.dart';

@Injectable(as: ExamRepository)
class ExamRepositoryImpl implements ExamRepository {
  final ExamRemoteDataSource _remoteDataSource;

  ExamRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, List<Exam>>> getAllExams() async {
    try {
      final exams = await _remoteDataSource.getAllExams();
      return Right(exams);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }
} 