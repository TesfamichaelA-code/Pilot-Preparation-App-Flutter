import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/i_progress_repository.dart';
import '../repositories/progress_repository_impl.dart';
import '../datasources/progress_remote_data_source.dart';
import '../../../../../core/network/dio_client.dart';

final progressRemoteDataSourceProvider = Provider<ProgressRemoteDataSource>(
  (ref) => ProgressRemoteDataSourceImpl(ref.watch(dioClientProvider)),
);

final progressRepositoryProvider = Provider<IProgressRepository>(
  (ref) => ProgressRepositoryImpl(ref.watch(progressRemoteDataSourceProvider)),
); 