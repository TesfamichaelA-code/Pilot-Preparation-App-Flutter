import 'package:dartz/dartz.dart';
import '../entities/exam.dart';
import '../entities/exam_progress.dart';
 
abstract class ExamRepository {
  Future<Either<String, List<Exam>>> getAllExams();
} 