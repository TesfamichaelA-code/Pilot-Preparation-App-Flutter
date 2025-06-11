import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart' show debugPrint;
import '../domain/repositories/i_resource_repository.dart';
import '../infrastructure/providers/resource_providers.dart';
import 'resource_state.dart';

@injectable
class ResourceNotifier extends StateNotifier<ResourceState> {
  final IResourceRepository _resourceRepository;

  ResourceNotifier(this._resourceRepository) : super(const ResourceState());

  Future<void> getAllResources() async {
    debugPrint('Fetching all resources...');
    state = const ResourceState(isLoading: true);
    
    // Clear cache before fetching new data
    (_resourceRepository as dynamic).clearCache();

    try {
      final resources = await _resourceRepository.getAllResources();
      debugPrint('Successfully fetched ${resources.length} resources');
      state = ResourceState(resources: resources);
    } catch (e) {
      debugPrint('Error fetching resources: $e');
      state = ResourceState(error: e.toString());
    }
  }

  void setType(String? type) {
    debugPrint('Setting type filter: $type');
    state = state.copyWith(selectedCategory: type);
  }

  void clearFilters() {
    debugPrint('Clearing type filter');
    state = state.copyWith(selectedCategory: null);
  }

  void clearError() {
    debugPrint('Clearing error state');
    state = state.copyWith(error: null);
  }
}

final resourceNotifierProvider =
    StateNotifierProvider<ResourceNotifier, ResourceState>((ref) {
  return ResourceNotifier(ref.watch(resourceRepositoryProvider));
}); 