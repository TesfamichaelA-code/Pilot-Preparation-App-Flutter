// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_attempts_by_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminAttemptsByCategory _$AdminAttemptsByCategoryFromJson(
    Map<String, dynamic> json) {
  return _AdminAttemptsByCategory.fromJson(json);
}

/// @nodoc
mixin _$AdminAttemptsByCategory {
  String get category => throw _privateConstructorUsedError;
  int get attempts => throw _privateConstructorUsedError;
  double get averageScore => throw _privateConstructorUsedError;

  /// Serializes this AdminAttemptsByCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminAttemptsByCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminAttemptsByCategoryCopyWith<AdminAttemptsByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAttemptsByCategoryCopyWith<$Res> {
  factory $AdminAttemptsByCategoryCopyWith(AdminAttemptsByCategory value,
          $Res Function(AdminAttemptsByCategory) then) =
      _$AdminAttemptsByCategoryCopyWithImpl<$Res, AdminAttemptsByCategory>;
  @useResult
  $Res call({String category, int attempts, double averageScore});
}

/// @nodoc
class _$AdminAttemptsByCategoryCopyWithImpl<$Res,
        $Val extends AdminAttemptsByCategory>
    implements $AdminAttemptsByCategoryCopyWith<$Res> {
  _$AdminAttemptsByCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminAttemptsByCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? attempts = null,
    Object? averageScore = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminAttemptsByCategoryImplCopyWith<$Res>
    implements $AdminAttemptsByCategoryCopyWith<$Res> {
  factory _$$AdminAttemptsByCategoryImplCopyWith(
          _$AdminAttemptsByCategoryImpl value,
          $Res Function(_$AdminAttemptsByCategoryImpl) then) =
      __$$AdminAttemptsByCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, int attempts, double averageScore});
}

/// @nodoc
class __$$AdminAttemptsByCategoryImplCopyWithImpl<$Res>
    extends _$AdminAttemptsByCategoryCopyWithImpl<$Res,
        _$AdminAttemptsByCategoryImpl>
    implements _$$AdminAttemptsByCategoryImplCopyWith<$Res> {
  __$$AdminAttemptsByCategoryImplCopyWithImpl(
      _$AdminAttemptsByCategoryImpl _value,
      $Res Function(_$AdminAttemptsByCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAttemptsByCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? attempts = null,
    Object? averageScore = null,
  }) {
    return _then(_$AdminAttemptsByCategoryImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminAttemptsByCategoryImpl implements _AdminAttemptsByCategory {
  const _$AdminAttemptsByCategoryImpl(
      {required this.category,
      required this.attempts,
      required this.averageScore});

  factory _$AdminAttemptsByCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminAttemptsByCategoryImplFromJson(json);

  @override
  final String category;
  @override
  final int attempts;
  @override
  final double averageScore;

  @override
  String toString() {
    return 'AdminAttemptsByCategory(category: $category, attempts: $attempts, averageScore: $averageScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminAttemptsByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, category, attempts, averageScore);

  /// Create a copy of AdminAttemptsByCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminAttemptsByCategoryImplCopyWith<_$AdminAttemptsByCategoryImpl>
      get copyWith => __$$AdminAttemptsByCategoryImplCopyWithImpl<
          _$AdminAttemptsByCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminAttemptsByCategoryImplToJson(
      this,
    );
  }
}

abstract class _AdminAttemptsByCategory implements AdminAttemptsByCategory {
  const factory _AdminAttemptsByCategory(
      {required final String category,
      required final int attempts,
      required final double averageScore}) = _$AdminAttemptsByCategoryImpl;

  factory _AdminAttemptsByCategory.fromJson(Map<String, dynamic> json) =
      _$AdminAttemptsByCategoryImpl.fromJson;

  @override
  String get category;
  @override
  int get attempts;
  @override
  double get averageScore;

  /// Create a copy of AdminAttemptsByCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminAttemptsByCategoryImplCopyWith<_$AdminAttemptsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
