// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_exam_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminExamResult _$AdminExamResultFromJson(Map<String, dynamic> json) {
  return _AdminExamResult.fromJson(json);
}

/// @nodoc
mixin _$AdminExamResult {
  String get id => throw _privateConstructorUsedError;
  String get examId => throw _privateConstructorUsedError;
  String get examTitle => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  int get totalQuestions => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  DateTime get completedAt => throw _privateConstructorUsedError;

  /// Serializes this AdminExamResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminExamResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminExamResultCopyWith<AdminExamResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminExamResultCopyWith<$Res> {
  factory $AdminExamResultCopyWith(
          AdminExamResult value, $Res Function(AdminExamResult) then) =
      _$AdminExamResultCopyWithImpl<$Res, AdminExamResult>;
  @useResult
  $Res call(
      {String id,
      String examId,
      String examTitle,
      double score,
      int totalQuestions,
      int correctAnswers,
      DateTime completedAt});
}

/// @nodoc
class _$AdminExamResultCopyWithImpl<$Res, $Val extends AdminExamResult>
    implements $AdminExamResultCopyWith<$Res> {
  _$AdminExamResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminExamResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? examTitle = null,
    Object? score = null,
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? completedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      examTitle: null == examTitle
          ? _value.examTitle
          : examTitle // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminExamResultImplCopyWith<$Res>
    implements $AdminExamResultCopyWith<$Res> {
  factory _$$AdminExamResultImplCopyWith(_$AdminExamResultImpl value,
          $Res Function(_$AdminExamResultImpl) then) =
      __$$AdminExamResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String examId,
      String examTitle,
      double score,
      int totalQuestions,
      int correctAnswers,
      DateTime completedAt});
}

/// @nodoc
class __$$AdminExamResultImplCopyWithImpl<$Res>
    extends _$AdminExamResultCopyWithImpl<$Res, _$AdminExamResultImpl>
    implements _$$AdminExamResultImplCopyWith<$Res> {
  __$$AdminExamResultImplCopyWithImpl(
      _$AdminExamResultImpl _value, $Res Function(_$AdminExamResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminExamResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? examTitle = null,
    Object? score = null,
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? completedAt = null,
  }) {
    return _then(_$AdminExamResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      examTitle: null == examTitle
          ? _value.examTitle
          : examTitle // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminExamResultImpl implements _AdminExamResult {
  const _$AdminExamResultImpl(
      {required this.id,
      required this.examId,
      required this.examTitle,
      required this.score,
      required this.totalQuestions,
      required this.correctAnswers,
      required this.completedAt});

  factory _$AdminExamResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminExamResultImplFromJson(json);

  @override
  final String id;
  @override
  final String examId;
  @override
  final String examTitle;
  @override
  final double score;
  @override
  final int totalQuestions;
  @override
  final int correctAnswers;
  @override
  final DateTime completedAt;

  @override
  String toString() {
    return 'AdminExamResult(id: $id, examId: $examId, examTitle: $examTitle, score: $score, totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminExamResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.examTitle, examTitle) ||
                other.examTitle == examTitle) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, examId, examTitle, score,
      totalQuestions, correctAnswers, completedAt);

  /// Create a copy of AdminExamResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminExamResultImplCopyWith<_$AdminExamResultImpl> get copyWith =>
      __$$AdminExamResultImplCopyWithImpl<_$AdminExamResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminExamResultImplToJson(
      this,
    );
  }
}

abstract class _AdminExamResult implements AdminExamResult {
  const factory _AdminExamResult(
      {required final String id,
      required final String examId,
      required final String examTitle,
      required final double score,
      required final int totalQuestions,
      required final int correctAnswers,
      required final DateTime completedAt}) = _$AdminExamResultImpl;

  factory _AdminExamResult.fromJson(Map<String, dynamic> json) =
      _$AdminExamResultImpl.fromJson;

  @override
  String get id;
  @override
  String get examId;
  @override
  String get examTitle;
  @override
  double get score;
  @override
  int get totalQuestions;
  @override
  int get correctAnswers;
  @override
  DateTime get completedAt;

  /// Create a copy of AdminExamResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminExamResultImplCopyWith<_$AdminExamResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
