import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/interview_repository.dart';
import '../repositories/interview_repository_impl.dart';
import '../datasources/interview_remote_data_source.dart';
import '../../../../../core/network/dio_client.dart';

final interviewRemoteDataSourceProvider = Provider<InterviewRemoteDataSource>((ref) {
  return InterviewRemoteDataSourceImpl(ref.watch(dioClientProvider));
});

final interviewRepositoryProvider = Provider<InterviewRepository>((ref) {
  return InterviewRepositoryImpl(ref.watch(interviewRemoteDataSourceProvider));
}); 