import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/interview.dart';
import '../../domain/repositories/interview_repository.dart';
import '../datasources/interview_remote_data_source.dart';

@Injectable(as: InterviewRepository)
class InterviewRepositoryImpl implements InterviewRepository {
  final InterviewRemoteDataSource _remoteDataSource;
  List<Interview>? _cachedInterviews;

  InterviewRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, List<Interview>>> getInterviews({
    String? category,
  }) async {
    try {
      // Always fetch fresh data when requested
      _cachedInterviews = await _remoteDataSource.getInterviews();
      
      // Apply category filtering
      final filteredInterviews = Interview.filterByCategory(
        _cachedInterviews!,
        category,
      );
      
      return right(filteredInterviews);
    } catch (e) {
      return left(e.toString());
    }
  }

  // Method to clear cache if needed
  void clearCache() {
    _cachedInterviews = null;
  }
} 