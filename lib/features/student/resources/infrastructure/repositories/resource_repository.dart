import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/resource.dart';
import '../../domain/repositories/i_resource_repository.dart';
import '../datasources/resource_remote_data_source.dart';

@Injectable(as: IResourceRepository)
class ResourceRepositoryImpl implements IResourceRepository {
  final ResourceRemoteDataSource _remoteDataSource;
  List<Resource>? _cachedResources;

  ResourceRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Resource>> getAllResources() async {
    try {
      // Always fetch fresh data when requested
      _cachedResources = await _remoteDataSource.getResources();
      return _cachedResources!;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Resource>> getResourcesByCategory(String category) async {
    try {
      // Use cached data if available, otherwise fetch
      final resources = _cachedResources ?? await _remoteDataSource.getResources();
      return Resource.filterByCategory(resources, category);
    } catch (e) {
      rethrow;
    }
  }

  // Method to clear cache if needed
  void clearCache() {
    _cachedResources = null;
  }
} 