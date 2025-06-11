// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerDetail _$AnswerDetailFromJson(Map<String, dynamic> json) {
  return _AnswerDetail.fromJson(json);
}

/// @nodoc
mixin _$AnswerDetail {
  @JsonKey(name: 'questionId')
  String get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'questionText')
  String get questionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'userAnswer')
  int get userAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctAnswer')
  int get correctAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'isCorrect')
  bool get isCorrect => throw _privateConstructorUsedError;

  /// Serializes this AnswerDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerDetailCopyWith<AnswerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerDetailCopyWith<$Res> {
  factory $AnswerDetailCopyWith(
          AnswerDetail value, $Res Function(AnswerDetail) then) =
      _$AnswerDetailCopyWithImpl<$Res, AnswerDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questionId') String questionId,
      @JsonKey(name: 'questionText') String questionText,
      @JsonKey(name: 'userAnswer') int userAnswer,
      @JsonKey(name: 'correctAnswer') int correctAnswer,
      @JsonKey(name: 'isCorrect') bool isCorrect});
}

/// @nodoc
class _$AnswerDetailCopyWithImpl<$Res, $Val extends AnswerDetail>
    implements $AnswerDetailCopyWith<$Res> {
  _$AnswerDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionText = null,
    Object? userAnswer = null,
    Object? correctAnswer = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerDetailImplCopyWith<$Res>
    implements $AnswerDetailCopyWith<$Res> {
  factory _$$AnswerDetailImplCopyWith(
          _$AnswerDetailImpl value, $Res Function(_$AnswerDetailImpl) then) =
      __$$AnswerDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questionId') String questionId,
      @JsonKey(name: 'questionText') String questionText,
      @JsonKey(name: 'userAnswer') int userAnswer,
      @JsonKey(name: 'correctAnswer') int correctAnswer,
      @JsonKey(name: 'isCorrect') bool isCorrect});
}

/// @nodoc
class __$$AnswerDetailImplCopyWithImpl<$Res>
    extends _$AnswerDetailCopyWithImpl<$Res, _$AnswerDetailImpl>
    implements _$$AnswerDetailImplCopyWith<$Res> {
  __$$AnswerDetailImplCopyWithImpl(
      _$AnswerDetailImpl _value, $Res Function(_$AnswerDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionText = null,
    Object? userAnswer = null,
    Object? correctAnswer = null,
    Object? isCorrect = null,
  }) {
    return _then(_$AnswerDetailImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerDetailImpl implements _AnswerDetail {
  const _$AnswerDetailImpl(
      {@JsonKey(name: 'questionId') required this.questionId,
      @JsonKey(name: 'questionText') required this.questionText,
      @JsonKey(name: 'userAnswer') required this.userAnswer,
      @JsonKey(name: 'correctAnswer') required this.correctAnswer,
      @JsonKey(name: 'isCorrect') required this.isCorrect});

  factory _$AnswerDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerDetailImplFromJson(json);

  @override
  @JsonKey(name: 'questionId')
  final String questionId;
  @override
  @JsonKey(name: 'questionText')
  final String questionText;
  @override
  @JsonKey(name: 'userAnswer')
  final int userAnswer;
  @override
  @JsonKey(name: 'correctAnswer')
  final int correctAnswer;
  @override
  @JsonKey(name: 'isCorrect')
  final bool isCorrect;

  @override
  String toString() {
    return 'AnswerDetail(questionId: $questionId, questionText: $questionText, userAnswer: $userAnswer, correctAnswer: $correctAnswer, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerDetailImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, questionText,
      userAnswer, correctAnswer, isCorrect);

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerDetailImplCopyWith<_$AnswerDetailImpl> get copyWith =>
      __$$AnswerDetailImplCopyWithImpl<_$AnswerDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerDetailImplToJson(
      this,
    );
  }
}

abstract class _AnswerDetail implements AnswerDetail {
  const factory _AnswerDetail(
          {@JsonKey(name: 'questionId') required final String questionId,
          @JsonKey(name: 'questionText') required final String questionText,
          @JsonKey(name: 'userAnswer') required final int userAnswer,
          @JsonKey(name: 'correctAnswer') required final int correctAnswer,
          @JsonKey(name: 'isCorrect') required final bool isCorrect}) =
      _$AnswerDetailImpl;

  factory _AnswerDetail.fromJson(Map<String, dynamic> json) =
      _$AnswerDetailImpl.fromJson;

  @override
  @JsonKey(name: 'questionId')
  String get questionId;
  @override
  @JsonKey(name: 'questionText')
  String get questionText;
  @override
  @JsonKey(name: 'userAnswer')
  int get userAnswer;
  @override
  @JsonKey(name: 'correctAnswer')
  int get correctAnswer;
  @override
  @JsonKey(name: 'isCorrect')
  bool get isCorrect;

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerDetailImplCopyWith<_$AnswerDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
