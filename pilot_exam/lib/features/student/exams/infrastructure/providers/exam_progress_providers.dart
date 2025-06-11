import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/exam_progress_repository.dart';
import '../repositories/exam_progress_repository_impl.dart';
import '../datasources/exam_progress_remote_data_source.dart';
import '../../../../../core/network/dio_client.dart';
 
final examProgressRepositoryProvider = Provider<ExamProgressRepository>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  final remoteDataSource = ExamProgressRemoteDataSourceImpl(dioClient);
  return ExamProgressRepositoryImpl(remoteDataSource);
}); 