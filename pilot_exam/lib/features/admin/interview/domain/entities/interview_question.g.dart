// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterviewQuestionImpl _$$InterviewQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$InterviewQuestionImpl(
      question: json['question'] as String,
      sampleAnswer: json['sampleAnswer'] as String,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
      tipsForAnswering: json['tipsForAnswering'] as String,
      yearAsked: (json['yearAsked'] as num).toInt(),
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$$InterviewQuestionImplToJson(
        _$InterviewQuestionImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'sampleAnswer': instance.sampleAnswer,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'tipsForAnswering': instance.tipsForAnswering,
      'yearAsked': instance.yearAsked,
      '_id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
