// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamProgressImpl _$$ExamProgressImplFromJson(Map<String, dynamic> json) =>
    _$ExamProgressImpl(
      userId: json['userId'] as String,
      examId: json['examId'] as String,
      score: (json['score'] as num).toInt(),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      answerDetails: (json['answerDetails'] as List<dynamic>)
          .map((e) => AnswerDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      completedAt: DateTime.parse(json['completedAt'] as String),
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ExamProgressImplToJson(_$ExamProgressImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'examId': instance.examId,
      'score': instance.score,
      'totalQuestions': instance.totalQuestions,
      'correctAnswers': instance.correctAnswers,
      'answerDetails': instance.answerDetails,
      'completedAt': instance.completedAt.toIso8601String(),
      '_id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
