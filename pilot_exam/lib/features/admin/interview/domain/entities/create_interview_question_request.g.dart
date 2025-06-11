// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_interview_question_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateInterviewQuestionRequestImpl
    _$$CreateInterviewQuestionRequestImplFromJson(Map<String, dynamic> json) =>
        _$CreateInterviewQuestionRequestImpl(
          question: json['question'] as String,
          sampleAnswer: json['sampleAnswer'] as String,
          category: json['category'] as String,
          difficulty: json['difficulty'] as String,
          tipsForAnswering: json['tipsForAnswering'] as String,
          yearAsked: (json['yearAsked'] as num).toInt(),
        );

Map<String, dynamic> _$$CreateInterviewQuestionRequestImplToJson(
        _$CreateInterviewQuestionRequestImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'sampleAnswer': instance.sampleAnswer,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'tipsForAnswering': instance.tipsForAnswering,
      'yearAsked': instance.yearAsked,
    };
