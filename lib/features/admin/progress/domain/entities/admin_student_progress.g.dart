// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_student_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminStudentProgressImpl _$$AdminStudentProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminStudentProgressImpl(
      user: AdminStudentUser.fromJson(json['user'] as Map<String, dynamic>),
      examResults: (json['examResults'] as List<dynamic>)
          .map((e) => AdminExamResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: AdminProgressSummary.fromJson(
          json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminStudentProgressImplToJson(
        _$AdminStudentProgressImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'examResults': instance.examResults,
      'summary': instance.summary,
    };
