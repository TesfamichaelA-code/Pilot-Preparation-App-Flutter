// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_progress_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamProgressState {
  ExamProgress? get progress => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ExamProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamProgressStateCopyWith<ExamProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamProgressStateCopyWith<$Res> {
  factory $ExamProgressStateCopyWith(
          ExamProgressState value, $Res Function(ExamProgressState) then) =
      _$ExamProgressStateCopyWithImpl<$Res, ExamProgressState>;
  @useResult
  $Res call({ExamProgress? progress, bool isLoading, String? error});

  $ExamProgressCopyWith<$Res>? get progress;
}

/// @nodoc
class _$ExamProgressStateCopyWithImpl<$Res, $Val extends ExamProgressState>
    implements $ExamProgressStateCopyWith<$Res> {
  _$ExamProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamProgressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as ExamProgress?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ExamProgressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExamProgressCopyWith<$Res>? get progress {
    if (_value.progress == null) {
      return null;
    }

    return $ExamProgressCopyWith<$Res>(_value.progress!, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExamProgressStateImplCopyWith<$Res>
    implements $ExamProgressStateCopyWith<$Res> {
  factory _$$ExamProgressStateImplCopyWith(_$ExamProgressStateImpl value,
          $Res Function(_$ExamProgressStateImpl) then) =
      __$$ExamProgressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExamProgress? progress, bool isLoading, String? error});

  @override
  $ExamProgressCopyWith<$Res>? get progress;
}

/// @nodoc
class __$$ExamProgressStateImplCopyWithImpl<$Res>
    extends _$ExamProgressStateCopyWithImpl<$Res, _$ExamProgressStateImpl>
    implements _$$ExamProgressStateImplCopyWith<$Res> {
  __$$ExamProgressStateImplCopyWithImpl(_$ExamProgressStateImpl _value,
      $Res Function(_$ExamProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamProgressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$ExamProgressStateImpl(
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as ExamProgress?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ExamProgressStateImpl implements _ExamProgressState {
  const _$ExamProgressStateImpl(
      {this.progress, this.isLoading = false, this.error});

  @override
  final ExamProgress? progress;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'ExamProgressState(progress: $progress, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamProgressStateImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, isLoading, error);

  /// Create a copy of ExamProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamProgressStateImplCopyWith<_$ExamProgressStateImpl> get copyWith =>
      __$$ExamProgressStateImplCopyWithImpl<_$ExamProgressStateImpl>(
          this, _$identity);
}

abstract class _ExamProgressState implements ExamProgressState {
  const factory _ExamProgressState(
      {final ExamProgress? progress,
      final bool isLoading,
      final String? error}) = _$ExamProgressStateImpl;

  @override
  ExamProgress? get progress;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of ExamProgressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamProgressStateImplCopyWith<_$ExamProgressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
