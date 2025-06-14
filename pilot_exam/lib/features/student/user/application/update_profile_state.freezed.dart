// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileStateCopyWith<UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
  @useResult
  $Res call({bool isLoading, String? error, bool isSuccess});
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? isSuccess = null,
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
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileStateImplCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$UpdateProfileStateImplCopyWith(_$UpdateProfileStateImpl value,
          $Res Function(_$UpdateProfileStateImpl) then) =
      __$$UpdateProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, bool isSuccess});
}

/// @nodoc
class __$$UpdateProfileStateImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$UpdateProfileStateImpl>
    implements _$$UpdateProfileStateImplCopyWith<$Res> {
  __$$UpdateProfileStateImplCopyWithImpl(_$UpdateProfileStateImpl _value,
      $Res Function(_$UpdateProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? isSuccess = null,
  }) {
    return _then(_$UpdateProfileStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateProfileStateImpl implements _UpdateProfileState {
  const _$UpdateProfileStateImpl(
      {this.isLoading = false, this.error, this.isSuccess = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isSuccess;

  @override
  String toString() {
    return 'UpdateProfileState(isLoading: $isLoading, error: $error, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, isSuccess);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileStateImplCopyWith<_$UpdateProfileStateImpl> get copyWith =>
      __$$UpdateProfileStateImplCopyWithImpl<_$UpdateProfileStateImpl>(
          this, _$identity);
}

abstract class _UpdateProfileState implements UpdateProfileState {
  const factory _UpdateProfileState(
      {final bool isLoading,
      final String? error,
      final bool isSuccess}) = _$UpdateProfileStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  bool get isSuccess;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileStateImplCopyWith<_$UpdateProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
