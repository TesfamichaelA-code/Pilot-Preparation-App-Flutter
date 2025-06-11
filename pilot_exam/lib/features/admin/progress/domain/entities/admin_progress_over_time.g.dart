// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_progress_over_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminProgressOverTimeImpl _$$AdminProgressOverTimeImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProgressOverTimeImpl(
      date: DateTime.parse(json['date'] as String),
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$$AdminProgressOverTimeImplToJson(
        _$AdminProgressOverTimeImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'score': instance.score,
    };
