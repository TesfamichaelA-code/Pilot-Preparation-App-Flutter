import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/entities/resource.dart';
import '../domain/entities/create_resource_request.dart';
import '../domain/repositories/resource_repository.dart';
import '../infrastructure/repositories/resource_repository_impl.dart';
import '../infrastructure/datasources/resource_remote_data_source.dart';
import '../../../../core/network/dio_client.dart';
import 'resource_state.dart';

final resourceRepositoryProvider = Provider<ResourceRepository>((ref) {
  final remoteDataSource = ref.watch(resourceRemoteDataSourceProvider);
  return ResourceRepositoryImpl(remoteDataSource);
});

final resourceRemoteDataSourceProvider = Provider<ResourceRemoteDataSource>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return ResourceRemoteDataSourceImpl(dioClient.dio);
});

final resourceNotifierProvider = StateNotifierProvider<ResourceNotifier, ResourceState>((ref) {
  final repository = ref.watch(resourceRepositoryProvider);
  return ResourceNotifier(repository);
});

class ResourceNotifier extends StateNotifier<ResourceState> {
  final ResourceRepository repository;

  ResourceNotifier(this.repository) : super(const ResourceState());

  Future<void> createResource(CreateResourceRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await repository.createResource(request);
    result.fold(
      (error) => state = state.copyWith(isLoading: false, error: error),
      (resource) => state = state.copyWith(isLoading: false, createdResource: resource),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
} 