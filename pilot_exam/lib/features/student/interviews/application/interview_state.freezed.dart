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
  List<Interview> get interviews => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;

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
      {List<Interview> interviews,
      bool isLoading,
      String? error,
      String? selectedCategory});
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
    Object? interviews = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      interviews: null == interviews
          ? _value.interviews
          : interviews // ignore: cast_nullable_to_non_nullable
              as List<Interview>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {List<Interview> interviews,
      bool isLoading,
      String? error,
      String? selectedCategory});
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
    Object? interviews = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedCategory = freezed,
  }) {
    return _then(_$InterviewStateImpl(
      interviews: null == interviews
          ? _value._interviews
          : interviews // ignore: cast_nullable_to_non_nullable
              as List<Interview>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InterviewStateImpl extends _InterviewState {
  const _$InterviewStateImpl(
      {final List<Interview> interviews = const [],
      this.isLoading = false,
      this.error,
      this.selectedCategory})
      : _interviews = interviews,
        super._();

  final List<Interview> _interviews;
  @override
  @JsonKey()
  List<Interview> get interviews {
    if (_interviews is EqualUnmodifiableListView) return _interviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interviews);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final String? selectedCategory;

  @override
  String toString() {
    return 'InterviewState(interviews: $interviews, isLoading: $isLoading, error: $error, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewStateImpl &&
            const DeepCollectionEquality()
                .equals(other._interviews, _interviews) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_interviews),
      isLoading,
      error,
      selectedCategory);

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewStateImplCopyWith<_$InterviewStateImpl> get copyWith =>
      __$$InterviewStateImplCopyWithImpl<_$InterviewStateImpl>(
          this, _$identity);
}

abstract class _InterviewState extends InterviewState {
  const factory _InterviewState(
      {final List<Interview> interviews,
      final bool isLoading,
      final String? error,
      final String? selectedCategory}) = _$InterviewStateImpl;
  const _InterviewState._() : super._();

  @override
  List<Interview> get interviews;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  String? get selectedCategory;

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewStateImplCopyWith<_$InterviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
