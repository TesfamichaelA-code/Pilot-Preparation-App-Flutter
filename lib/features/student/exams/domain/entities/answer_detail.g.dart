// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerDetailImpl _$$AnswerDetailImplFromJson(Map<String, dynamic> json) =>
    _$AnswerDetailImpl(
      questionId: json['questionId'] as String,
      questionText: json['questionText'] as String,
      userAnswer: (json['userAnswer'] as num).toInt(),
      correctAnswer: (json['correctAnswer'] as num).toInt(),
      isCorrect: json['isCorrect'] as bool,
    );

Map<String, dynamic> _$$AnswerDetailImplToJson(_$AnswerDetailImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionText': instance.questionText,
      'userAnswer': instance.userAnswer,
      'correctAnswer': instance.correctAnswer,
      'isCorrect': instance.isCorrect,
    };
