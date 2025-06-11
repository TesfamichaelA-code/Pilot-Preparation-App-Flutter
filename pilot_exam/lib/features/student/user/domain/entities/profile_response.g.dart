// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      data: User.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'timestamp': instance.timestamp,
    };
