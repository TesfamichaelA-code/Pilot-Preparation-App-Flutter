// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_progress_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminProgressSummaryImpl _$$AdminProgressSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProgressSummaryImpl(
      totalExamsTaken: (json['totalExamsTaken'] as num).toInt(),
      averageScore: (json['averageScore'] as num).toDouble(),
      progressOverTime: (json['progressOverTime'] as List<dynamic>)
          .map((e) => AdminProgressOverTime.fromJson(e as Map<String, dynamic>))
          .toList(),
      attemptsByCategory: (json['attemptsByCategory'] as List<dynamic>)
          .map((e) =>
              AdminAttemptsByCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      attemptsByDifficulty: (json['attemptsByDifficulty'] as List<dynamic>)
          .map((e) =>
              AdminAttemptsByDifficulty.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdminProgressSummaryImplToJson(
        _$AdminProgressSummaryImpl instance) =>
    <String, dynamic>{
      'totalExamsTaken': instance.totalExamsTaken,
      'averageScore': instance.averageScore,
      'progressOverTime': instance.progressOverTime,
      'attemptsByCategory': instance.attemptsByCategory,
      'attemptsByDifficulty': instance.attemptsByDifficulty,
    };
