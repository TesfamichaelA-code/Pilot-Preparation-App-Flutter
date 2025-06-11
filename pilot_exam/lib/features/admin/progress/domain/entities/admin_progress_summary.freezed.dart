// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_progress_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminProgressSummary _$AdminProgressSummaryFromJson(Map<String, dynamic> json) {
  return _AdminProgressSummary.fromJson(json);
}

/// @nodoc
mixin _$AdminProgressSummary {
  int get totalExamsTaken => throw _privateConstructorUsedError;
  double get averageScore => throw _privateConstructorUsedError;
  List<AdminProgressOverTime> get progressOverTime =>
      throw _privateConstructorUsedError;
  List<AdminAttemptsByCategory> get attemptsByCategory =>
      throw _privateConstructorUsedError;
  List<AdminAttemptsByDifficulty> get attemptsByDifficulty =>
      throw _privateConstructorUsedError;

  /// Serializes this AdminProgressSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProgressSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProgressSummaryCopyWith<AdminProgressSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProgressSummaryCopyWith<$Res> {
  factory $AdminProgressSummaryCopyWith(AdminProgressSummary value,
          $Res Function(AdminProgressSummary) then) =
      _$AdminProgressSummaryCopyWithImpl<$Res, AdminProgressSummary>;
  @useResult
  $Res call(
      {int totalExamsTaken,
      double averageScore,
      List<AdminProgressOverTime> progressOverTime,
      List<AdminAttemptsByCategory> attemptsByCategory,
      List<AdminAttemptsByDifficulty> attemptsByDifficulty});
}

/// @nodoc
class _$AdminProgressSummaryCopyWithImpl<$Res,
        $Val extends AdminProgressSummary>
    implements $AdminProgressSummaryCopyWith<$Res> {
  _$AdminProgressSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProgressSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalExamsTaken = null,
    Object? averageScore = null,
    Object? progressOverTime = null,
    Object? attemptsByCategory = null,
    Object? attemptsByDifficulty = null,
  }) {
    return _then(_value.copyWith(
      totalExamsTaken: null == totalExamsTaken
          ? _value.totalExamsTaken
          : totalExamsTaken // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
      progressOverTime: null == progressOverTime
          ? _value.progressOverTime
          : progressOverTime // ignore: cast_nullable_to_non_nullable
              as List<AdminProgressOverTime>,
      attemptsByCategory: null == attemptsByCategory
          ? _value.attemptsByCategory
          : attemptsByCategory // ignore: cast_nullable_to_non_nullable
              as List<AdminAttemptsByCategory>,
      attemptsByDifficulty: null == attemptsByDifficulty
          ? _value.attemptsByDifficulty
          : attemptsByDifficulty // ignore: cast_nullable_to_non_nullable
              as List<AdminAttemptsByDifficulty>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminProgressSummaryImplCopyWith<$Res>
    implements $AdminProgressSummaryCopyWith<$Res> {
  factory _$$AdminProgressSummaryImplCopyWith(_$AdminProgressSummaryImpl value,
          $Res Function(_$AdminProgressSummaryImpl) then) =
      __$$AdminProgressSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalExamsTaken,
      double averageScore,
      List<AdminProgressOverTime> progressOverTime,
      List<AdminAttemptsByCategory> attemptsByCategory,
      List<AdminAttemptsByDifficulty> attemptsByDifficulty});
}

/// @nodoc
class __$$AdminProgressSummaryImplCopyWithImpl<$Res>
    extends _$AdminProgressSummaryCopyWithImpl<$Res, _$AdminProgressSummaryImpl>
    implements _$$AdminProgressSummaryImplCopyWith<$Res> {
  __$$AdminProgressSummaryImplCopyWithImpl(_$AdminProgressSummaryImpl _value,
      $Res Function(_$AdminProgressSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProgressSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalExamsTaken = null,
    Object? averageScore = null,
    Object? progressOverTime = null,
    Object? attemptsByCategory = null,
    Object? attemptsByDifficulty = null,
  }) {
    return _then(_$AdminProgressSummaryImpl(
      totalExamsTaken: null == totalExamsTaken
          ? _value.totalExamsTaken
          : totalExamsTaken // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
      progressOverTime: null == progressOverTime
          ? _value._progressOverTime
          : progressOverTime // ignore: cast_nullable_to_non_nullable
              as List<AdminProgressOverTime>,
      attemptsByCategory: null == attemptsByCategory
          ? _value._attemptsByCategory
          : attemptsByCategory // ignore: cast_nullable_to_non_nullable
              as List<AdminAttemptsByCategory>,
      attemptsByDifficulty: null == attemptsByDifficulty
          ? _value._attemptsByDifficulty
          : attemptsByDifficulty // ignore: cast_nullable_to_non_nullable
              as List<AdminAttemptsByDifficulty>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminProgressSummaryImpl implements _AdminProgressSummary {
  const _$AdminProgressSummaryImpl(
      {required this.totalExamsTaken,
      required this.averageScore,
      required final List<AdminProgressOverTime> progressOverTime,
      required final List<AdminAttemptsByCategory> attemptsByCategory,
      required final List<AdminAttemptsByDifficulty> attemptsByDifficulty})
      : _progressOverTime = progressOverTime,
        _attemptsByCategory = attemptsByCategory,
        _attemptsByDifficulty = attemptsByDifficulty;

  factory _$AdminProgressSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProgressSummaryImplFromJson(json);

  @override
  final int totalExamsTaken;
  @override
  final double averageScore;
  final List<AdminProgressOverTime> _progressOverTime;
  @override
  List<AdminProgressOverTime> get progressOverTime {
    if (_progressOverTime is EqualUnmodifiableListView)
      return _progressOverTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_progressOverTime);
  }

  final List<AdminAttemptsByCategory> _attemptsByCategory;
  @override
  List<AdminAttemptsByCategory> get attemptsByCategory {
    if (_attemptsByCategory is EqualUnmodifiableListView)
      return _attemptsByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attemptsByCategory);
  }

  final List<AdminAttemptsByDifficulty> _attemptsByDifficulty;
  @override
  List<AdminAttemptsByDifficulty> get attemptsByDifficulty {
    if (_attemptsByDifficulty is EqualUnmodifiableListView)
      return _attemptsByDifficulty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attemptsByDifficulty);
  }

  @override
  String toString() {
    return 'AdminProgressSummary(totalExamsTaken: $totalExamsTaken, averageScore: $averageScore, progressOverTime: $progressOverTime, attemptsByCategory: $attemptsByCategory, attemptsByDifficulty: $attemptsByDifficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProgressSummaryImpl &&
            (identical(other.totalExamsTaken, totalExamsTaken) ||
                other.totalExamsTaken == totalExamsTaken) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore) &&
            const DeepCollectionEquality()
                .equals(other._progressOverTime, _progressOverTime) &&
            const DeepCollectionEquality()
                .equals(other._attemptsByCategory, _attemptsByCategory) &&
            const DeepCollectionEquality()
                .equals(other._attemptsByDifficulty, _attemptsByDifficulty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalExamsTaken,
      averageScore,
      const DeepCollectionEquality().hash(_progressOverTime),
      const DeepCollectionEquality().hash(_attemptsByCategory),
      const DeepCollectionEquality().hash(_attemptsByDifficulty));

  /// Create a copy of AdminProgressSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProgressSummaryImplCopyWith<_$AdminProgressSummaryImpl>
      get copyWith =>
          __$$AdminProgressSummaryImplCopyWithImpl<_$AdminProgressSummaryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProgressSummaryImplToJson(
      this,
    );
  }
}

abstract class _AdminProgressSummary implements AdminProgressSummary {
  const factory _AdminProgressSummary(
      {required final int totalExamsTaken,
      required final double averageScore,
      required final List<AdminProgressOverTime> progressOverTime,
      required final List<AdminAttemptsByCategory> attemptsByCategory,
      required final List<AdminAttemptsByDifficulty>
          attemptsByDifficulty}) = _$AdminProgressSummaryImpl;

  factory _AdminProgressSummary.fromJson(Map<String, dynamic> json) =
      _$AdminProgressSummaryImpl.fromJson;

  @override
  int get totalExamsTaken;
  @override
  double get averageScore;
  @override
  List<AdminProgressOverTime> get progressOverTime;
  @override
  List<AdminAttemptsByCategory> get attemptsByCategory;
  @override
  List<AdminAttemptsByDifficulty> get attemptsByDifficulty;

  /// Create a copy of AdminProgressSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProgressSummaryImplCopyWith<_$AdminProgressSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
