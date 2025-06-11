import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/exam_repository.dart';
import '../repositories/exam_repository_impl.dart';
import '../datasources/exam_remote_data_source.dart';
import '../../../../../core/network/dio_client.dart';


final examRemoteDataSourceProvider = Provider<ExamRemoteDataSource>((ref) {
  return ExamRemoteDataSourceImpl(ref.watch(dioClientProvider));
});

final examRepositoryProvider = Provider<ExamRepository>((ref) {
  return ExamRepositoryImpl(ref.watch(examRemoteDataSourceProvider));
}); 