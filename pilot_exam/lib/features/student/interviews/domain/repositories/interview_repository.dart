import 'package:dartz/dartz.dart';
import '../entities/interview.dart';

abstract class InterviewRepository {
  Future<Either<String, List<Interview>>> getInterviews({
    String? category,
  });
  
  void clearCache();
} 