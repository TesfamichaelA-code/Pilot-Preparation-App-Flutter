// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InterviewQuestion _$InterviewQuestionFromJson(Map<String, dynamic> json) {
  return _InterviewQuestion.fromJson(json);
}

/// @nodoc
mixin _$InterviewQuestion {
  String get question => throw _privateConstructorUsedError;
  String get sampleAnswer => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get tipsForAnswering => throw _privateConstructorUsedError;
  int get yearAsked => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int get v => throw _privateConstructorUsedError;

  /// Serializes this InterviewQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterviewQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewQuestionCopyWith<InterviewQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewQuestionCopyWith<$Res> {
  factory $InterviewQuestionCopyWith(
          InterviewQuestion value, $Res Function(InterviewQuestion) then) =
      _$InterviewQuestionCopyWithImpl<$Res, InterviewQuestion>;
  @useResult
  $Res call(
      {String question,
      String sampleAnswer,
      String category,
      String difficulty,
      String tipsForAnswering,
      int yearAsked,
      @JsonKey(name: '_id') String id,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__v') int v});
}

/// @nodoc
class _$InterviewQuestionCopyWithImpl<$Res, $Val extends InterviewQuestion>
    implements $InterviewQuestionCopyWith<$Res> {
  _$InterviewQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterviewQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? sampleAnswer = null,
    Object? category = null,
    Object? difficulty = null,
    Object? tipsForAnswering = null,
    Object? yearAsked = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      sampleAnswer: null == sampleAnswer
          ? _value.sampleAnswer
          : sampleAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      tipsForAnswering: null == tipsForAnswering
          ? _value.tipsForAnswering
          : tipsForAnswering // ignore: cast_nullable_to_non_nullable
              as String,
      yearAsked: null == yearAsked
          ? _value.yearAsked
          : yearAsked // ignore: cast_nullable_to_non_nullable
              as int,
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
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterviewQuestionImplCopyWith<$Res>
    implements $InterviewQuestionCopyWith<$Res> {
  factory _$$InterviewQuestionImplCopyWith(_$InterviewQuestionImpl value,
          $Res Function(_$InterviewQuestionImpl) then) =
      __$$InterviewQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String sampleAnswer,
      String category,
      String difficulty,
      String tipsForAnswering,
      int yearAsked,
      @JsonKey(name: '_id') String id,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__v') int v});
}

/// @nodoc
class __$$InterviewQuestionImplCopyWithImpl<$Res>
    extends _$InterviewQuestionCopyWithImpl<$Res, _$InterviewQuestionImpl>
    implements _$$InterviewQuestionImplCopyWith<$Res> {
  __$$InterviewQuestionImplCopyWithImpl(_$InterviewQuestionImpl _value,
      $Res Function(_$InterviewQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterviewQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? sampleAnswer = null,
    Object? category = null,
    Object? difficulty = null,
    Object? tipsForAnswering = null,
    Object? yearAsked = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$InterviewQuestionImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      sampleAnswer: null == sampleAnswer
          ? _value.sampleAnswer
          : sampleAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      tipsForAnswering: null == tipsForAnswering
          ? _value.tipsForAnswering
          : tipsForAnswering // ignore: cast_nullable_to_non_nullable
              as String,
      yearAsked: null == yearAsked
          ? _value.yearAsked
          : yearAsked // ignore: cast_nullable_to_non_nullable
              as int,
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
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterviewQuestionImpl implements _InterviewQuestion {
  const _$InterviewQuestionImpl(
      {required this.question,
      required this.sampleAnswer,
      required this.category,
      required this.difficulty,
      required this.tipsForAnswering,
      required this.yearAsked,
      @JsonKey(name: '_id') required this.id,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: '__v') required this.v});

  factory _$InterviewQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterviewQuestionImplFromJson(json);

  @override
  final String question;
  @override
  final String sampleAnswer;
  @override
  final String category;
  @override
  final String difficulty;
  @override
  final String tipsForAnswering;
  @override
  final int yearAsked;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: '__v')
  final int v;

  @override
  String toString() {
    return 'InterviewQuestion(question: $question, sampleAnswer: $sampleAnswer, category: $category, difficulty: $difficulty, tipsForAnswering: $tipsForAnswering, yearAsked: $yearAsked, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewQuestionImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.sampleAnswer, sampleAnswer) ||
                other.sampleAnswer == sampleAnswer) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.tipsForAnswering, tipsForAnswering) ||
                other.tipsForAnswering == tipsForAnswering) &&
            (identical(other.yearAsked, yearAsked) ||
                other.yearAsked == yearAsked) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, sampleAnswer, category,
      difficulty, tipsForAnswering, yearAsked, id, createdAt, updatedAt, v);

  /// Create a copy of InterviewQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewQuestionImplCopyWith<_$InterviewQuestionImpl> get copyWith =>
      __$$InterviewQuestionImplCopyWithImpl<_$InterviewQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterviewQuestionImplToJson(
      this,
    );
  }
}

abstract class _InterviewQuestion implements InterviewQuestion {
  const factory _InterviewQuestion(
      {required final String question,
      required final String sampleAnswer,
      required final String category,
      required final String difficulty,
      required final String tipsForAnswering,
      required final int yearAsked,
      @JsonKey(name: '_id') required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: '__v') required final int v}) = _$InterviewQuestionImpl;

  factory _InterviewQuestion.fromJson(Map<String, dynamic> json) =
      _$InterviewQuestionImpl.fromJson;

  @override
  String get question;
  @override
  String get sampleAnswer;
  @override
  String get category;
  @override
  String get difficulty;
  @override
  String get tipsForAnswering;
  @override
  int get yearAsked;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: '__v')
  int get v;

  /// Create a copy of InterviewQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewQuestionImplCopyWith<_$InterviewQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
