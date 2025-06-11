import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/question_repository.dart';
import '../repositories/question_repository_impl.dart';
import '../datasources/remote_question_data_source.dart';
import '../../../../../core/network/dio_client.dart';

final questionRemoteDataSourceProvider = Provider<QuestionRemoteDataSource>((ref) {
  return QuestionRemoteDataSourceImpl(ref.watch(dioClientProvider));
});

final questionRepositoryProvider = Provider<QuestionRepository>((ref) {
  return QuestionRepositoryImpl(ref.watch(questionRemoteDataSourceProvider));
}); 