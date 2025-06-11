import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_interview_question_request.freezed.dart';
part 'create_interview_question_request.g.dart';

@freezed
class CreateInterviewQuestionRequest with _$CreateInterviewQuestionRequest {
  const factory CreateInterviewQuestionRequest({
    required String question,
    required String sampleAnswer,
    required String category,
    required String difficulty,
    required String tipsForAnswering,
    required int yearAsked,
  }) = _CreateInterviewQuestionRequest;

  factory CreateInterviewQuestionRequest.fromJson(Map<String, dynamic> json) => _$CreateInterviewQuestionRequestFromJson(json);
} 