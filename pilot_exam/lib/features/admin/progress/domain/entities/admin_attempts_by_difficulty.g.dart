// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_attempts_by_difficulty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminAttemptsByDifficultyImpl _$$AdminAttemptsByDifficultyImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminAttemptsByDifficultyImpl(
      difficulty: json['difficulty'] as String,
      attempts: (json['attempts'] as num).toInt(),
      averageScore: (json['averageScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$AdminAttemptsByDifficultyImplToJson(
        _$AdminAttemptsByDifficultyImpl instance) =>
    <String, dynamic>{
      'difficulty': instance.difficulty,
      'attempts': instance.attempts,
      'averageScore': instance.averageScore,
    };
