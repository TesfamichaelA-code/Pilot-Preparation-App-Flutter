// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exam_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateExamRequestImpl _$$CreateExamRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateExamRequestImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$CreateExamRequestImplToJson(
        _$CreateExamRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'durationMinutes': instance.durationMinutes,
      'isActive': instance.isActive,
    };
