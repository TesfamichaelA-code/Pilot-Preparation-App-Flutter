import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/student_repository.dart';
import '../repositories/student_repository_impl.dart';
import '../datasources/student_remote_data_source.dart';
import '../../../../../core/network/dio_client.dart';

final studentRemoteDataSourceProvider = Provider<StudentRemoteDataSource>((ref) {
  return StudentRemoteDataSourceImpl(ref.watch(dioClientProvider));
});

final studentRepositoryProvider = Provider<StudentRepository>((ref) {
  return StudentRepositoryImpl(ref.watch(studentRemoteDataSourceProvider));
}); 