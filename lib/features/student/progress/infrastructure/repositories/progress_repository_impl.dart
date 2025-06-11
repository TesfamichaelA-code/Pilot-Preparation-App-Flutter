import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/progress_stats.dart';
import '../../domain/repositories/i_progress_repository.dart';
import '../datasources/progress_remote_data_source.dart';

@Injectable(as: IProgressRepository)
class ProgressRepositoryImpl implements IProgressRepository {
  final ProgressRemoteDataSource _remoteDataSource;
  ProgressStats? _cachedStats;

  ProgressRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, ProgressStats>> getProgressStats() async {
    try {
      // Always fetch fresh data when requested
      _cachedStats = await _remoteDataSource.getProgressStats();
      return right(_cachedStats!);
    } catch (e) {
      return left(e.toString());
    }
  }

  // Method to clear cache if needed
  void clearCache() {
    _cachedStats = null;
  }
} 