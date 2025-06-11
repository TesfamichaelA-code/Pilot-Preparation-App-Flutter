import '../entities/resource.dart';

abstract class IResourceRepository {
  /// Get all resources from the API
  Future<List<Resource>> getAllResources();
  
  /// Get resources filtered by category
  Future<List<Resource>> getResourcesByCategory(String category);
} 