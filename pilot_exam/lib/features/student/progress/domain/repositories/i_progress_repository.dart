import 'package:dartz/dartz.dart';
import '../entities/progress_stats.dart';

abstract class IProgressRepository {
  Future<Either<String, ProgressStats>> getProgressStats();
} 