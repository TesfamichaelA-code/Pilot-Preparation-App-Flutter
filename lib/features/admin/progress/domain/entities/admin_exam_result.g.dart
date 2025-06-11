// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_exam_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminExamResultImpl _$$AdminExamResultImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminExamResultImpl(
      id: json['id'] as String,
      examId: json['examId'] as String,
      examTitle: json['examTitle'] as String,
      score: (json['score'] as num).toDouble(),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      completedAt: DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$$AdminExamResultImplToJson(
        _$AdminExamResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'examId': instance.examId,
      'examTitle': instance.examTitle,
      'score': instance.score,
      'totalQuestions': instance.totalQuestions,
      'correctAnswers': instance.correctAnswers,
      'completedAt': instance.completedAt.toIso8601String(),
    };
