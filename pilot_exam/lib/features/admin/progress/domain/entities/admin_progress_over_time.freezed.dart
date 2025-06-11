// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_progress_over_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminProgressOverTime _$AdminProgressOverTimeFromJson(
    Map<String, dynamic> json) {
  return _AdminProgressOverTime.fromJson(json);
}

/// @nodoc
mixin _$AdminProgressOverTime {
  DateTime get date => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;

  /// Serializes this AdminProgressOverTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProgressOverTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProgressOverTimeCopyWith<AdminProgressOverTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProgressOverTimeCopyWith<$Res> {
  factory $AdminProgressOverTimeCopyWith(AdminProgressOverTime value,
          $Res Function(AdminProgressOverTime) then) =
      _$AdminProgressOverTimeCopyWithImpl<$Res, AdminProgressOverTime>;
  @useResult
  $Res call({DateTime date, double score});
}

/// @nodoc
class _$AdminProgressOverTimeCopyWithImpl<$Res,
        $Val extends AdminProgressOverTime>
    implements $AdminProgressOverTimeCopyWith<$Res> {
  _$AdminProgressOverTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProgressOverTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminProgressOverTimeImplCopyWith<$Res>
    implements $AdminProgressOverTimeCopyWith<$Res> {
  factory _$$AdminProgressOverTimeImplCopyWith(
          _$AdminProgressOverTimeImpl value,
          $Res Function(_$AdminProgressOverTimeImpl) then) =
      __$$AdminProgressOverTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double score});
}

/// @nodoc
class __$$AdminProgressOverTimeImplCopyWithImpl<$Res>
    extends _$AdminProgressOverTimeCopyWithImpl<$Res,
        _$AdminProgressOverTimeImpl>
    implements _$$AdminProgressOverTimeImplCopyWith<$Res> {
  __$$AdminProgressOverTimeImplCopyWithImpl(_$AdminProgressOverTimeImpl _value,
      $Res Function(_$AdminProgressOverTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProgressOverTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? score = null,
  }) {
    return _then(_$AdminProgressOverTimeImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminProgressOverTimeImpl implements _AdminProgressOverTime {
  const _$AdminProgressOverTimeImpl({required this.date, required this.score});

  factory _$AdminProgressOverTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProgressOverTimeImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double score;

  @override
  String toString() {
    return 'AdminProgressOverTime(date: $date, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProgressOverTimeImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, score);

  /// Create a copy of AdminProgressOverTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProgressOverTimeImplCopyWith<_$AdminProgressOverTimeImpl>
      get copyWith => __$$AdminProgressOverTimeImplCopyWithImpl<
          _$AdminProgressOverTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProgressOverTimeImplToJson(
      this,
    );
  }
}

abstract class _AdminProgressOverTime implements AdminProgressOverTime {
  const factory _AdminProgressOverTime(
      {required final DateTime date,
      required final double score}) = _$AdminProgressOverTimeImpl;

  factory _AdminProgressOverTime.fromJson(Map<String, dynamic> json) =
      _$AdminProgressOverTimeImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get score;

  /// Create a copy of AdminProgressOverTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProgressOverTimeImplCopyWith<_$AdminProgressOverTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
