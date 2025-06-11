// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InterviewState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  InterviewQuestion? get createdQuestion => throw _privateConstructorUsedError;

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewStateCopyWith<InterviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewStateCopyWith<$Res> {
  factory $InterviewStateCopyWith(
          InterviewState value, $Res Function(InterviewState) then) =
      _$InterviewStateCopyWithImpl<$Res, InterviewState>;
  @useResult
  $Res call(
      {bool isLoading, String? error, InterviewQuestion? createdQuestion});

  $InterviewQuestionCopyWith<$Res>? get createdQuestion;
}

/// @nodoc
class _$InterviewStateCopyWithImpl<$Res, $Val extends InterviewState>
    implements $InterviewStateCopyWith<$Res> {
  _$InterviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? createdQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      createdQuestion: freezed == createdQuestion
          ? _value.createdQuestion
          : createdQuestion // ignore: cast_nullable_to_non_nullable
              as InterviewQuestion?,
    ) as $Val);
  }

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InterviewQuestionCopyWith<$Res>? get createdQuestion {
    if (_value.createdQuestion == null) {
      return null;
    }

    return $InterviewQuestionCopyWith<$Res>(_value.createdQuestion!, (value) {
      return _then(_value.copyWith(createdQuestion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InterviewStateImplCopyWith<$Res>
    implements $InterviewStateCopyWith<$Res> {
  factory _$$InterviewStateImplCopyWith(_$InterviewStateImpl value,
          $Res Function(_$InterviewStateImpl) then) =
      __$$InterviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, String? error, InterviewQuestion? createdQuestion});

  @override
  $InterviewQuestionCopyWith<$Res>? get createdQuestion;
}

/// @nodoc
class __$$InterviewStateImplCopyWithImpl<$Res>
    extends _$InterviewStateCopyWithImpl<$Res, _$InterviewStateImpl>
    implements _$$InterviewStateImplCopyWith<$Res> {
  __$$InterviewStateImplCopyWithImpl(
      _$InterviewStateImpl _value, $Res Function(_$InterviewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? createdQuestion = freezed,
  }) {
    return _then(_$InterviewStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      createdQuestion: freezed == createdQuestion
          ? _value.createdQuestion
          : createdQuestion // ignore: cast_nullable_to_non_nullable
              as InterviewQuestion?,
    ));
  }
}

/// @nodoc

class _$InterviewStateImpl implements _InterviewState {
  const _$InterviewStateImpl(
      {this.isLoading = false, this.error, this.createdQuestion});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final InterviewQuestion? createdQuestion;

  @override
  String toString() {
    return 'InterviewState(isLoading: $isLoading, error: $error, createdQuestion: $createdQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdQuestion, createdQuestion) ||
                other.createdQuestion == createdQuestion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, error, createdQuestion);

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewStateImplCopyWith<_$InterviewStateImpl> get copyWith =>
      __$$InterviewStateImplCopyWithImpl<_$InterviewStateImpl>(
          this, _$identity);
}

abstract class _InterviewState implements InterviewState {
  const factory _InterviewState(
      {final bool isLoading,
      final String? error,
      final InterviewQuestion? createdQuestion}) = _$InterviewStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  InterviewQuestion? get createdQuestion;

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewStateImplCopyWith<_$InterviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
