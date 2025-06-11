// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_attempts_by_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminAttemptsByCategoryImpl _$$AdminAttemptsByCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminAttemptsByCategoryImpl(
      category: json['category'] as String,
      attempts: (json['attempts'] as num).toInt(),
      averageScore: (json['averageScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$AdminAttemptsByCategoryImplToJson(
        _$AdminAttemptsByCategoryImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'attempts': instance.attempts,
      'averageScore': instance.averageScore,
    };
