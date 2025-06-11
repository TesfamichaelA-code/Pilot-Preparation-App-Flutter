import 'package:dartz/dartz.dart';
import '../entities/exam_progress.dart';

abstract class ExamProgressRepository {
  Future<Either<String, ExamProgress>> submitExam({
    required String examId,
    required List<int> answers,
  });
} 