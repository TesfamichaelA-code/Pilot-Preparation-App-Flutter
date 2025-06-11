import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/entities/interview_question.dart';
import '../domain/entities/create_interview_question_request.dart';
import '../domain/repositories/interview_repository.dart';
import '../infrastructure/repositories/interview_repository_impl.dart';
import '../infrastructure/datasources/interview_remote_data_source.dart';
import '../../../../core/network/dio_client.dart';
import 'interview_state.dart';

final interviewRepositoryProvider = Provider<InterviewRepository>((ref) {
  final remoteDataSource = ref.watch(interviewRemoteDataSourceProvider);
  return InterviewRepositoryImpl(remoteDataSource);
});

final interviewRemoteDataSourceProvider = Provider<InterviewRemoteDataSource>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return InterviewRemoteDataSourceImpl(dioClient.dio);
});

final interviewNotifierProvider = StateNotifierProvider<InterviewNotifier, InterviewState>((ref) {
  final repository = ref.watch(interviewRepositoryProvider);
  return InterviewNotifier(repository);
});

class InterviewNotifier extends StateNotifier<InterviewState> {
  final InterviewRepository repository;

  InterviewNotifier(this.repository) : super(const InterviewState());

  Future<void> createInterviewQuestion(CreateInterviewQuestionRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await repository.createInterviewQuestion(request);
    result.fold(
      (error) => state = state.copyWith(isLoading: false, error: error),
      (question) => state = state.copyWith(isLoading: false, createdQuestion: question),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
} 