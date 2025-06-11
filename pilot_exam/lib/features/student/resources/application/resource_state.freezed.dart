// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResourceState {
  List<Resource> get resources => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceStateCopyWith<ResourceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceStateCopyWith<$Res> {
  factory $ResourceStateCopyWith(
          ResourceState value, $Res Function(ResourceState) then) =
      _$ResourceStateCopyWithImpl<$Res, ResourceState>;
  @useResult
  $Res call(
      {List<Resource> resources,
      bool isLoading,
      String? error,
      String? selectedCategory});
}

/// @nodoc
class _$ResourceStateCopyWithImpl<$Res, $Val extends ResourceState>
    implements $ResourceStateCopyWith<$Res> {
  _$ResourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<Resource>,
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
abstract class _$$ResourceStateImplCopyWith<$Res>
    implements $ResourceStateCopyWith<$Res> {
  factory _$$ResourceStateImplCopyWith(
          _$ResourceStateImpl value, $Res Function(_$ResourceStateImpl) then) =
      __$$ResourceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Resource> resources,
      bool isLoading,
      String? error,
      String? selectedCategory});
}

/// @nodoc
class __$$ResourceStateImplCopyWithImpl<$Res>
    extends _$ResourceStateCopyWithImpl<$Res, _$ResourceStateImpl>
    implements _$$ResourceStateImplCopyWith<$Res> {
  __$$ResourceStateImplCopyWithImpl(
      _$ResourceStateImpl _value, $Res Function(_$ResourceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedCategory = freezed,
  }) {
    return _then(_$ResourceStateImpl(
      resources: null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<Resource>,
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

class _$ResourceStateImpl extends _ResourceState {
  const _$ResourceStateImpl(
      {final List<Resource> resources = const [],
      this.isLoading = false,
      this.error,
      this.selectedCategory})
      : _resources = resources,
        super._();

  final List<Resource> _resources;
  @override
  @JsonKey()
  List<Resource> get resources {
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resources);
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
    return 'ResourceState(resources: $resources, isLoading: $isLoading, error: $error, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceStateImpl &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_resources),
      isLoading,
      error,
      selectedCategory);

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceStateImplCopyWith<_$ResourceStateImpl> get copyWith =>
      __$$ResourceStateImplCopyWithImpl<_$ResourceStateImpl>(this, _$identity);
}

abstract class _ResourceState extends ResourceState {
  const factory _ResourceState(
      {final List<Resource> resources,
      final bool isLoading,
      final String? error,
      final String? selectedCategory}) = _$ResourceStateImpl;
  const _ResourceState._() : super._();

  @override
  List<Resource> get resources;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  String? get selectedCategory;

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceStateImplCopyWith<_$ResourceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
