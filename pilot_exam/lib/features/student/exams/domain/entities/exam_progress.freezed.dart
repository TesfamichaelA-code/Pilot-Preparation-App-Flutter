// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExamProgress _$ExamProgressFromJson(Map<String, dynamic> json) {
  return _ExamProgress.fromJson(json);
}

/// @nodoc
mixin _$ExamProgress {
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'examId')
  String get examId => throw _privateConstructorUsedError;
  @JsonKey(name: 'score')
  int get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalQuestions')
  int get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctAnswers')
  int get correctAnswers => throw _privateConstructorUsedError;
  @JsonKey(name: 'answerDetails')
  List<AnswerDetail> get answerDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedAt')
  DateTime get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ExamProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamProgressCopyWith<ExamProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamProgressCopyWith<$Res> {
  factory $ExamProgressCopyWith(
          ExamProgress value, $Res Function(ExamProgress) then) =
      _$ExamProgressCopyWithImpl<$Res, ExamProgress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'examId') String examId,
      @JsonKey(name: 'score') int score,
      @JsonKey(name: 'totalQuestions') int totalQuestions,
      @JsonKey(name: 'correctAnswers') int correctAnswers,
      @JsonKey(name: 'answerDetails') List<AnswerDetail> answerDetails,
      @JsonKey(name: 'completedAt') DateTime completedAt,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt});
}

/// @nodoc
class _$ExamProgressCopyWithImpl<$Res, $Val extends ExamProgress>
    implements $ExamProgressCopyWith<$Res> {
  _$ExamProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? examId = null,
    Object? score = null,
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? answerDetails = null,
    Object? completedAt = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      answerDetails: null == answerDetails
          ? _value.answerDetails
          : answerDetails // ignore: cast_nullable_to_non_nullable
              as List<AnswerDetail>,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamProgressImplCopyWith<$Res>
    implements $ExamProgressCopyWith<$Res> {
  factory _$$ExamProgressImplCopyWith(
          _$ExamProgressImpl value, $Res Function(_$ExamProgressImpl) then) =
      __$$ExamProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'examId') String examId,
      @JsonKey(name: 'score') int score,
      @JsonKey(name: 'totalQuestions') int totalQuestions,
      @JsonKey(name: 'correctAnswers') int correctAnswers,
      @JsonKey(name: 'answerDetails') List<AnswerDetail> answerDetails,
      @JsonKey(name: 'completedAt') DateTime completedAt,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt});
}

/// @nodoc
class __$$ExamProgressImplCopyWithImpl<$Res>
    extends _$ExamProgressCopyWithImpl<$Res, _$ExamProgressImpl>
    implements _$$ExamProgressImplCopyWith<$Res> {
  __$$ExamProgressImplCopyWithImpl(
      _$ExamProgressImpl _value, $Res Function(_$ExamProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? examId = null,
    Object? score = null,
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? answerDetails = null,
    Object? completedAt = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ExamProgressImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      answerDetails: null == answerDetails
          ? _value._answerDetails
          : answerDetails // ignore: cast_nullable_to_non_nullable
              as List<AnswerDetail>,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamProgressImpl implements _ExamProgress {
  const _$ExamProgressImpl(
      {@JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'examId') required this.examId,
      @JsonKey(name: 'score') required this.score,
      @JsonKey(name: 'totalQuestions') required this.totalQuestions,
      @JsonKey(name: 'correctAnswers') required this.correctAnswers,
      @JsonKey(name: 'answerDetails')
      required final List<AnswerDetail> answerDetails,
      @JsonKey(name: 'completedAt') required this.completedAt,
      @JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _answerDetails = answerDetails;

  factory _$ExamProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamProgressImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'examId')
  final String examId;
  @override
  @JsonKey(name: 'score')
  final int score;
  @override
  @JsonKey(name: 'totalQuestions')
  final int totalQuestions;
  @override
  @JsonKey(name: 'correctAnswers')
  final int correctAnswers;
  final List<AnswerDetail> _answerDetails;
  @override
  @JsonKey(name: 'answerDetails')
  List<AnswerDetail> get answerDetails {
    if (_answerDetails is EqualUnmodifiableListView) return _answerDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerDetails);
  }

  @override
  @JsonKey(name: 'completedAt')
  final DateTime completedAt;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ExamProgress(userId: $userId, examId: $examId, score: $score, totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, answerDetails: $answerDetails, completedAt: $completedAt, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamProgressImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            const DeepCollectionEquality()
                .equals(other._answerDetails, _answerDetails) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      examId,
      score,
      totalQuestions,
      correctAnswers,
      const DeepCollectionEquality().hash(_answerDetails),
      completedAt,
      id,
      createdAt,
      updatedAt);

  /// Create a copy of ExamProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamProgressImplCopyWith<_$ExamProgressImpl> get copyWith =>
      __$$ExamProgressImplCopyWithImpl<_$ExamProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamProgressImplToJson(
      this,
    );
  }
}

abstract class _ExamProgress implements ExamProgress {
  const factory _ExamProgress(
          {@JsonKey(name: 'userId') required final String userId,
          @JsonKey(name: 'examId') required final String examId,
          @JsonKey(name: 'score') required final int score,
          @JsonKey(name: 'totalQuestions') required final int totalQuestions,
          @JsonKey(name: 'correctAnswers') required final int correctAnswers,
          @JsonKey(name: 'answerDetails')
          required final List<AnswerDetail> answerDetails,
          @JsonKey(name: 'completedAt') required final DateTime completedAt,
          @JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'createdAt') required final DateTime createdAt,
          @JsonKey(name: 'updatedAt') required final DateTime updatedAt}) =
      _$ExamProgressImpl;

  factory _ExamProgress.fromJson(Map<String, dynamic> json) =
      _$ExamProgressImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: 'examId')
  String get examId;
  @override
  @JsonKey(name: 'score')
  int get score;
  @override
  @JsonKey(name: 'totalQuestions')
  int get totalQuestions;
  @override
  @JsonKey(name: 'correctAnswers')
  int get correctAnswers;
  @override
  @JsonKey(name: 'answerDetails')
  List<AnswerDetail> get answerDetails;
  @override
  @JsonKey(name: 'completedAt')
  DateTime get completedAt;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt;

  /// Create a copy of ExamProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamProgressImplCopyWith<_$ExamProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
