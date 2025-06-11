// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: json['id'] as String,
      examId: json['examId'] as String,
      text: json['text'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswer: (json['correctAnswer'] as num).toInt(),
      explanation: json['explanation'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'examId': instance.examId,
      'text': instance.text,
      'options': instance.options,
      'correctAnswer': instance.correctAnswer,
      'explanation': instance.explanation,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
