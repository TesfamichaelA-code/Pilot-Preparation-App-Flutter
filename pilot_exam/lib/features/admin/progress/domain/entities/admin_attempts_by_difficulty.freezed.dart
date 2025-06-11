// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_attempts_by_difficulty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminAttemptsByDifficulty _$AdminAttemptsByDifficultyFromJson(
    Map<String, dynamic> json) {
  return _AdminAttemptsByDifficulty.fromJson(json);
}

/// @nodoc
mixin _$AdminAttemptsByDifficulty {
  String get difficulty => throw _privateConstructorUsedError;
  int get attempts => throw _privateConstructorUsedError;
  double get averageScore => throw _privateConstructorUsedError;

  /// Serializes this AdminAttemptsByDifficulty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminAttemptsByDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminAttemptsByDifficultyCopyWith<AdminAttemptsByDifficulty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAttemptsByDifficultyCopyWith<$Res> {
  factory $AdminAttemptsByDifficultyCopyWith(AdminAttemptsByDifficulty value,
          $Res Function(AdminAttemptsByDifficulty) then) =
      _$AdminAttemptsByDifficultyCopyWithImpl<$Res, AdminAttemptsByDifficulty>;
  @useResult
  $Res call({String difficulty, int attempts, double averageScore});
}

/// @nodoc
class _$AdminAttemptsByDifficultyCopyWithImpl<$Res,
        $Val extends AdminAttemptsByDifficulty>
    implements $AdminAttemptsByDifficultyCopyWith<$Res> {
  _$AdminAttemptsByDifficultyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminAttemptsByDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? difficulty = null,
    Object? attempts = null,
    Object? averageScore = null,
  }) {
    return _then(_value.copyWith(
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdminAttemptsByDifficultyImplCopyWith<$Res>
    implements $AdminAttemptsByDifficultyCopyWith<$Res> {
  factory _$$AdminAttemptsByDifficultyImplCopyWith(
          _$AdminAttemptsByDifficultyImpl value,
          $Res Function(_$AdminAttemptsByDifficultyImpl) then) =
      __$$AdminAttemptsByDifficultyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String difficulty, int attempts, double averageScore});
}

/// @nodoc
class __$$AdminAttemptsByDifficultyImplCopyWithImpl<$Res>
    extends _$AdminAttemptsByDifficultyCopyWithImpl<$Res,
        _$AdminAttemptsByDifficultyImpl>
    implements _$$AdminAttemptsByDifficultyImplCopyWith<$Res> {
  __$$AdminAttemptsByDifficultyImplCopyWithImpl(
      _$AdminAttemptsByDifficultyImpl _value,
      $Res Function(_$AdminAttemptsByDifficultyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAttemptsByDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? difficulty = null,
    Object? attempts = null,
    Object? averageScore = null,
  }) {
    return _then(_$AdminAttemptsByDifficultyImpl(
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
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
class _$AdminAttemptsByDifficultyImpl implements _AdminAttemptsByDifficulty {
  const _$AdminAttemptsByDifficultyImpl(
      {required this.difficulty,
      required this.attempts,
      required this.averageScore});

  factory _$AdminAttemptsByDifficultyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminAttemptsByDifficultyImplFromJson(json);

  @override
  final String difficulty;
  @override
  final int attempts;
  @override
  final double averageScore;

  @override
  String toString() {
    return 'AdminAttemptsByDifficulty(difficulty: $difficulty, attempts: $attempts, averageScore: $averageScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminAttemptsByDifficultyImpl &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, difficulty, attempts, averageScore);

  /// Create a copy of AdminAttemptsByDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminAttemptsByDifficultyImplCopyWith<_$AdminAttemptsByDifficultyImpl>
      get copyWith => __$$AdminAttemptsByDifficultyImplCopyWithImpl<
          _$AdminAttemptsByDifficultyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminAttemptsByDifficultyImplToJson(
      this,
    );
  }
}

abstract class _AdminAttemptsByDifficulty implements AdminAttemptsByDifficulty {
  const factory _AdminAttemptsByDifficulty(
      {required final String difficulty,
      required final int attempts,
      required final double averageScore}) = _$AdminAttemptsByDifficultyImpl;

  factory _AdminAttemptsByDifficulty.fromJson(Map<String, dynamic> json) =
      _$AdminAttemptsByDifficultyImpl.fromJson;

  @override
  String get difficulty;
  @override
  int get attempts;
  @override
  double get averageScore;

  /// Create a copy of AdminAttemptsByDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminAttemptsByDifficultyImplCopyWith<_$AdminAttemptsByDifficultyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
