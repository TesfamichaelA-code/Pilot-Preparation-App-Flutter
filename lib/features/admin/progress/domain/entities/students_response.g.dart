// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentsResponseImpl _$$StudentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$StudentsResponseImplToJson(
        _$StudentsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'timestamp': instance.timestamp.toIso8601String(),
    };
