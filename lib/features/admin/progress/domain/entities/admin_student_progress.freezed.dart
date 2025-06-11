// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_student_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminStudentProgress _$AdminStudentProgressFromJson(Map<String, dynamic> json) {
  return _AdminStudentProgress.fromJson(json);
}

/// @nodoc
mixin _$AdminStudentProgress {
  AdminStudentUser get user => throw _privateConstructorUsedError;
  List<AdminExamResult> get examResults => throw _privateConstructorUsedError;
  AdminProgressSummary get summary => throw _privateConstructorUsedError;

  /// Serializes this AdminStudentProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminStudentProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminStudentProgressCopyWith<AdminStudentProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStudentProgressCopyWith<$Res> {
  factory $AdminStudentProgressCopyWith(AdminStudentProgress value,
          $Res Function(AdminStudentProgress) then) =
      _$AdminStudentProgressCopyWithImpl<$Res, AdminStudentProgress>;
  @useResult
  $Res call(
      {AdminStudentUser user,
      List<AdminExamResult> examResults,
      AdminProgressSummary summary});

  $AdminStudentUserCopyWith<$Res> get user;
  $AdminProgressSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$AdminStudentProgressCopyWithImpl<$Res,
        $Val extends AdminStudentProgress>
    implements $AdminStudentProgressCopyWith<$Res> {
  _$AdminStudentProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminStudentProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? examResults = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminStudentUser,
      examResults: null == examResults
          ? _value.examResults
          : examResults // ignore: cast_nullable_to_non_nullable
              as List<AdminExamResult>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as AdminProgressSummary,
    ) as $Val);
  }

  /// Create a copy of AdminStudentProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminStudentUserCopyWith<$Res> get user {
    return $AdminStudentUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AdminStudentProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProgressSummaryCopyWith<$Res> get summary {
    return $AdminProgressSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminStudentProgressImplCopyWith<$Res>
    implements $AdminStudentProgressCopyWith<$Res> {
  factory _$$AdminStudentProgressImplCopyWith(_$AdminStudentProgressImpl value,
          $Res Function(_$AdminStudentProgressImpl) then) =
      __$$AdminStudentProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AdminStudentUser user,
      List<AdminExamResult> examResults,
      AdminProgressSummary summary});

  @override
  $AdminStudentUserCopyWith<$Res> get user;
  @override
  $AdminProgressSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$AdminStudentProgressImplCopyWithImpl<$Res>
    extends _$AdminStudentProgressCopyWithImpl<$Res, _$AdminStudentProgressImpl>
    implements _$$AdminStudentProgressImplCopyWith<$Res> {
  __$$AdminStudentProgressImplCopyWithImpl(_$AdminStudentProgressImpl _value,
      $Res Function(_$AdminStudentProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminStudentProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? examResults = null,
    Object? summary = null,
  }) {
    return _then(_$AdminStudentProgressImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminStudentUser,
      examResults: null == examResults
          ? _value._examResults
          : examResults // ignore: cast_nullable_to_non_nullable
              as List<AdminExamResult>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as AdminProgressSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminStudentProgressImpl implements _AdminStudentProgress {
  const _$AdminStudentProgressImpl(
      {required this.user,
      required final List<AdminExamResult> examResults,
      required this.summary})
      : _examResults = examResults;

  factory _$AdminStudentProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminStudentProgressImplFromJson(json);

  @override
  final AdminStudentUser user;
  final List<AdminExamResult> _examResults;
  @override
  List<AdminExamResult> get examResults {
    if (_examResults is EqualUnmodifiableListView) return _examResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examResults);
  }

  @override
  final AdminProgressSummary summary;

  @override
  String toString() {
    return 'AdminStudentProgress(user: $user, examResults: $examResults, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminStudentProgressImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._examResults, _examResults) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user,
      const DeepCollectionEquality().hash(_examResults), summary);

  /// Create a copy of AdminStudentProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminStudentProgressImplCopyWith<_$AdminStudentProgressImpl>
      get copyWith =>
          __$$AdminStudentProgressImplCopyWithImpl<_$AdminStudentProgressImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminStudentProgressImplToJson(
      this,
    );
  }
}

abstract class _AdminStudentProgress implements AdminStudentProgress {
  const factory _AdminStudentProgress(
          {required final AdminStudentUser user,
          required final List<AdminExamResult> examResults,
          required final AdminProgressSummary summary}) =
      _$AdminStudentProgressImpl;

  factory _AdminStudentProgress.fromJson(Map<String, dynamic> json) =
      _$AdminStudentProgressImpl.fromJson;

  @override
  AdminStudentUser get user;
  @override
  List<AdminExamResult> get examResults;
  @override
  AdminProgressSummary get summary;

  /// Create a copy of AdminStudentProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminStudentProgressImplCopyWith<_$AdminStudentProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}
