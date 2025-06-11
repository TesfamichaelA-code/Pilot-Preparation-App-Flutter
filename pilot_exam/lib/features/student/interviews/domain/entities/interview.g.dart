// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterviewImpl _$$InterviewImplFromJson(Map<String, dynamic> json) =>
    _$InterviewImpl(
      id: json['_id'] as String,
      question: json['question'] as String,
      sampleAnswer: json['sampleAnswer'] as String,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
      tipsForAnswering: json['tipsForAnswering'] as String,
      yearAsked: (json['yearAsked'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$InterviewImplToJson(_$InterviewImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'question': instance.question,
      'sampleAnswer': instance.sampleAnswer,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'tipsForAnswering': instance.tipsForAnswering,
      'yearAsked': instance.yearAsked,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
