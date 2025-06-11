// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_interview_question_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateInterviewQuestionRequest _$CreateInterviewQuestionRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateInterviewQuestionRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateInterviewQuestionRequest {
  String get question => throw _privateConstructorUsedError;
  String get sampleAnswer => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get tipsForAnswering => throw _privateConstructorUsedError;
  int get yearAsked => throw _privateConstructorUsedError;

  /// Serializes this CreateInterviewQuestionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateInterviewQuestionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateInterviewQuestionRequestCopyWith<CreateInterviewQuestionRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateInterviewQuestionRequestCopyWith<$Res> {
  factory $CreateInterviewQuestionRequestCopyWith(
          CreateInterviewQuestionRequest value,
          $Res Function(CreateInterviewQuestionRequest) then) =
      _$CreateInterviewQuestionRequestCopyWithImpl<$Res,
          CreateInterviewQuestionRequest>;
  @useResult
  $Res call(
      {String question,
      String sampleAnswer,
      String category,
      String difficulty,
      String tipsForAnswering,
      int yearAsked});
}

/// @nodoc
class _$CreateInterviewQuestionRequestCopyWithImpl<$Res,
        $Val extends CreateInterviewQuestionRequest>
    implements $CreateInterviewQuestionRequestCopyWith<$Res> {
  _$CreateInterviewQuestionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateInterviewQuestionRequest
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateInterviewQuestionRequestImplCopyWith<$Res>
    implements $CreateInterviewQuestionRequestCopyWith<$Res> {
  factory _$$CreateInterviewQuestionRequestImplCopyWith(
          _$CreateInterviewQuestionRequestImpl value,
          $Res Function(_$CreateInterviewQuestionRequestImpl) then) =
      __$$CreateInterviewQuestionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String sampleAnswer,
      String category,
      String difficulty,
      String tipsForAnswering,
      int yearAsked});
}

/// @nodoc
class __$$CreateInterviewQuestionRequestImplCopyWithImpl<$Res>
    extends _$CreateInterviewQuestionRequestCopyWithImpl<$Res,
        _$CreateInterviewQuestionRequestImpl>
    implements _$$CreateInterviewQuestionRequestImplCopyWith<$Res> {
  __$$CreateInterviewQuestionRequestImplCopyWithImpl(
      _$CreateInterviewQuestionRequestImpl _value,
      $Res Function(_$CreateInterviewQuestionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateInterviewQuestionRequest
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
  }) {
    return _then(_$CreateInterviewQuestionRequestImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateInterviewQuestionRequestImpl
    implements _CreateInterviewQuestionRequest {
  const _$CreateInterviewQuestionRequestImpl(
      {required this.question,
      required this.sampleAnswer,
      required this.category,
      required this.difficulty,
      required this.tipsForAnswering,
      required this.yearAsked});

  factory _$CreateInterviewQuestionRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateInterviewQuestionRequestImplFromJson(json);

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
  String toString() {
    return 'CreateInterviewQuestionRequest(question: $question, sampleAnswer: $sampleAnswer, category: $category, difficulty: $difficulty, tipsForAnswering: $tipsForAnswering, yearAsked: $yearAsked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInterviewQuestionRequestImpl &&
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
                other.yearAsked == yearAsked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, sampleAnswer, category,
      difficulty, tipsForAnswering, yearAsked);

  /// Create a copy of CreateInterviewQuestionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInterviewQuestionRequestImplCopyWith<
          _$CreateInterviewQuestionRequestImpl>
      get copyWith => __$$CreateInterviewQuestionRequestImplCopyWithImpl<
          _$CreateInterviewQuestionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateInterviewQuestionRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateInterviewQuestionRequest
    implements CreateInterviewQuestionRequest {
  const factory _CreateInterviewQuestionRequest(
      {required final String question,
      required final String sampleAnswer,
      required final String category,
      required final String difficulty,
      required final String tipsForAnswering,
      required final int yearAsked}) = _$CreateInterviewQuestionRequestImpl;

  factory _CreateInterviewQuestionRequest.fromJson(Map<String, dynamic> json) =
      _$CreateInterviewQuestionRequestImpl.fromJson;

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

  /// Create a copy of CreateInterviewQuestionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateInterviewQuestionRequestImplCopyWith<
          _$CreateInterviewQuestionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
