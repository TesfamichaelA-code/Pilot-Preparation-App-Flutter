import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/network/dio_client.dart';
import '../../../../../core/services/token_service.dart';
import '../../domain/repositories/i_resource_repository.dart';
import '../datasources/resource_remote_data_source.dart';
import '../repositories/resource_repository.dart';

final tokenServiceProvider = Provider<TokenService>((ref) => TokenService());

final dioClientProvider = Provider<DioClient>((ref) {
  final tokenService = ref.watch(tokenServiceProvider);
  return DioClient(tokenService);
});

final resourceRemoteDataSourceProvider = Provider<ResourceRemoteDataSource>(
  (ref) => ResourceRemoteDataSourceImpl(ref.watch(dioClientProvider)),
);

final resourceRepositoryProvider = Provider<IResourceRepository>(
  (ref) => ResourceRepositoryImpl(ref.watch(resourceRemoteDataSourceProvider)),
); 