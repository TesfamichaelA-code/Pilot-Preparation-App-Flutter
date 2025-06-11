// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Interview _$InterviewFromJson(Map<String, dynamic> json) {
  return _Interview.fromJson(json);
}

/// @nodoc
mixin _$Interview {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get sampleAnswer => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get tipsForAnswering => throw _privateConstructorUsedError;
  int get yearAsked => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Interview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Interview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewCopyWith<Interview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewCopyWith<$Res> {
  factory $InterviewCopyWith(Interview value, $Res Function(Interview) then) =
      _$InterviewCopyWithImpl<$Res, Interview>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String question,
      String sampleAnswer,
      String category,
      String difficulty,
      String tipsForAnswering,
      int yearAsked,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$InterviewCopyWithImpl<$Res, $Val extends Interview>
    implements $InterviewCopyWith<$Res> {
  _$InterviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Interview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? sampleAnswer = null,
    Object? category = null,
    Object? difficulty = null,
    Object? tipsForAnswering = null,
    Object? yearAsked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$InterviewImplCopyWith<$Res>
    implements $InterviewCopyWith<$Res> {
  factory _$$InterviewImplCopyWith(
          _$InterviewImpl value, $Res Function(_$InterviewImpl) then) =
      __$$InterviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String question,
      String sampleAnswer,
      String category,
      String difficulty,
      String tipsForAnswering,
      int yearAsked,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$InterviewImplCopyWithImpl<$Res>
    extends _$InterviewCopyWithImpl<$Res, _$InterviewImpl>
    implements _$$InterviewImplCopyWith<$Res> {
  __$$InterviewImplCopyWithImpl(
      _$InterviewImpl _value, $Res Function(_$InterviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Interview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? sampleAnswer = null,
    Object? category = null,
    Object? difficulty = null,
    Object? tipsForAnswering = null,
    Object? yearAsked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$InterviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$InterviewImpl implements _Interview {
  const _$InterviewImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.question,
      required this.sampleAnswer,
      required this.category,
      required this.difficulty,
      required this.tipsForAnswering,
      required this.yearAsked,
      required this.createdAt,
      required this.updatedAt});

  factory _$InterviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterviewImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
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
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Interview(id: $id, question: $question, sampleAnswer: $sampleAnswer, category: $category, difficulty: $difficulty, tipsForAnswering: $tipsForAnswering, yearAsked: $yearAsked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, question, sampleAnswer,
      category, difficulty, tipsForAnswering, yearAsked, createdAt, updatedAt);

  /// Create a copy of Interview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewImplCopyWith<_$InterviewImpl> get copyWith =>
      __$$InterviewImplCopyWithImpl<_$InterviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterviewImplToJson(
      this,
    );
  }
}

abstract class _Interview implements Interview {
  const factory _Interview(
      {@JsonKey(name: '_id') required final String id,
      required final String question,
      required final String sampleAnswer,
      required final String category,
      required final String difficulty,
      required final String tipsForAnswering,
      required final int yearAsked,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$InterviewImpl;

  factory _Interview.fromJson(Map<String, dynamic> json) =
      _$InterviewImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
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
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Interview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewImplCopyWith<_$InterviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
