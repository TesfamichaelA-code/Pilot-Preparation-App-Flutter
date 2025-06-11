// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamImpl _$$ExamImplFromJson(Map<String, dynamic> json) => _$ExamImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      isActive: json['isActive'] as bool,
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$$ExamImplToJson(_$ExamImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'durationMinutes': instance.durationMinutes,
      'isActive': instance.isActive,
      '_id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
