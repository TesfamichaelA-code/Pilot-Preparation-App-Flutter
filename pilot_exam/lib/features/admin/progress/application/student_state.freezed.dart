// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentState {
  StudentsResponse? get students => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentStateCopyWith<StudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
          StudentState value, $Res Function(StudentState) then) =
      _$StudentStateCopyWithImpl<$Res, StudentState>;
  @useResult
  $Res call({StudentsResponse? students, bool isLoading, String? error});

  $StudentsResponseCopyWith<$Res>? get students;
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res, $Val extends StudentState>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as StudentsResponse?,
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

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentsResponseCopyWith<$Res>? get students {
    if (_value.students == null) {
      return null;
    }

    return $StudentsResponseCopyWith<$Res>(_value.students!, (value) {
      return _then(_value.copyWith(students: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentStateImplCopyWith<$Res>
    implements $StudentStateCopyWith<$Res> {
  factory _$$StudentStateImplCopyWith(
          _$StudentStateImpl value, $Res Function(_$StudentStateImpl) then) =
      __$$StudentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StudentsResponse? students, bool isLoading, String? error});

  @override
  $StudentsResponseCopyWith<$Res>? get students;
}

/// @nodoc
class __$$StudentStateImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$StudentStateImpl>
    implements _$$StudentStateImplCopyWith<$Res> {
  __$$StudentStateImplCopyWithImpl(
      _$StudentStateImpl _value, $Res Function(_$StudentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$StudentStateImpl(
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as StudentsResponse?,
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

class _$StudentStateImpl implements _StudentState {
  const _$StudentStateImpl({this.students, this.isLoading = false, this.error});

  @override
  final StudentsResponse? students;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'StudentState(students: $students, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentStateImpl &&
            (identical(other.students, students) ||
                other.students == students) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, students, isLoading, error);

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentStateImplCopyWith<_$StudentStateImpl> get copyWith =>
      __$$StudentStateImplCopyWithImpl<_$StudentStateImpl>(this, _$identity);
}

abstract class _StudentState implements StudentState {
  const factory _StudentState(
      {final StudentsResponse? students,
      final bool isLoading,
      final String? error}) = _$StudentStateImpl;

  @override
  StudentsResponse? get students;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentStateImplCopyWith<_$StudentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
