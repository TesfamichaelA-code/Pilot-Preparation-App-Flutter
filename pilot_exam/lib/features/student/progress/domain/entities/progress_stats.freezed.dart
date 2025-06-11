// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgressStats {
  int get totalExamsTaken => throw _privateConstructorUsedError;
  double get averageScore => throw _privateConstructorUsedError;
  double get highestScore => throw _privateConstructorUsedError;
  double get lowestScore => throw _privateConstructorUsedError;
  List<ExamResult> get recentResults => throw _privateConstructorUsedError;
  List<MonthlyProgress> get progressOverTime =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProgressStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressStatsCopyWith<ProgressStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStatsCopyWith<$Res> {
  factory $ProgressStatsCopyWith(
          ProgressStats value, $Res Function(ProgressStats) then) =
      _$ProgressStatsCopyWithImpl<$Res, ProgressStats>;
  @useResult
  $Res call(
      {int totalExamsTaken,
      double averageScore,
      double highestScore,
      double lowestScore,
      List<ExamResult> recentResults,
      List<MonthlyProgress> progressOverTime});
}

/// @nodoc
class _$ProgressStatsCopyWithImpl<$Res, $Val extends ProgressStats>
    implements $ProgressStatsCopyWith<$Res> {
  _$ProgressStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalExamsTaken = null,
    Object? averageScore = null,
    Object? highestScore = null,
    Object? lowestScore = null,
    Object? recentResults = null,
    Object? progressOverTime = null,
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
      highestScore: null == highestScore
          ? _value.highestScore
          : highestScore // ignore: cast_nullable_to_non_nullable
              as double,
      lowestScore: null == lowestScore
          ? _value.lowestScore
          : lowestScore // ignore: cast_nullable_to_non_nullable
              as double,
      recentResults: null == recentResults
          ? _value.recentResults
          : recentResults // ignore: cast_nullable_to_non_nullable
              as List<ExamResult>,
      progressOverTime: null == progressOverTime
          ? _value.progressOverTime
          : progressOverTime // ignore: cast_nullable_to_non_nullable
              as List<MonthlyProgress>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressStatsImplCopyWith<$Res>
    implements $ProgressStatsCopyWith<$Res> {
  factory _$$ProgressStatsImplCopyWith(
          _$ProgressStatsImpl value, $Res Function(_$ProgressStatsImpl) then) =
      __$$ProgressStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalExamsTaken,
      double averageScore,
      double highestScore,
      double lowestScore,
      List<ExamResult> recentResults,
      List<MonthlyProgress> progressOverTime});
}

/// @nodoc
class __$$ProgressStatsImplCopyWithImpl<$Res>
    extends _$ProgressStatsCopyWithImpl<$Res, _$ProgressStatsImpl>
    implements _$$ProgressStatsImplCopyWith<$Res> {
  __$$ProgressStatsImplCopyWithImpl(
      _$ProgressStatsImpl _value, $Res Function(_$ProgressStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalExamsTaken = null,
    Object? averageScore = null,
    Object? highestScore = null,
    Object? lowestScore = null,
    Object? recentResults = null,
    Object? progressOverTime = null,
  }) {
    return _then(_$ProgressStatsImpl(
      totalExamsTaken: null == totalExamsTaken
          ? _value.totalExamsTaken
          : totalExamsTaken // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
      highestScore: null == highestScore
          ? _value.highestScore
          : highestScore // ignore: cast_nullable_to_non_nullable
              as double,
      lowestScore: null == lowestScore
          ? _value.lowestScore
          : lowestScore // ignore: cast_nullable_to_non_nullable
              as double,
      recentResults: null == recentResults
          ? _value._recentResults
          : recentResults // ignore: cast_nullable_to_non_nullable
              as List<ExamResult>,
      progressOverTime: null == progressOverTime
          ? _value._progressOverTime
          : progressOverTime // ignore: cast_nullable_to_non_nullable
              as List<MonthlyProgress>,
    ));
  }
}

/// @nodoc

class _$ProgressStatsImpl implements _ProgressStats {
  const _$ProgressStatsImpl(
      {required this.totalExamsTaken,
      required this.averageScore,
      required this.highestScore,
      required this.lowestScore,
      required final List<ExamResult> recentResults,
      required final List<MonthlyProgress> progressOverTime})
      : _recentResults = recentResults,
        _progressOverTime = progressOverTime;

  @override
  final int totalExamsTaken;
  @override
  final double averageScore;
  @override
  final double highestScore;
  @override
  final double lowestScore;
  final List<ExamResult> _recentResults;
  @override
  List<ExamResult> get recentResults {
    if (_recentResults is EqualUnmodifiableListView) return _recentResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentResults);
  }

  final List<MonthlyProgress> _progressOverTime;
  @override
  List<MonthlyProgress> get progressOverTime {
    if (_progressOverTime is EqualUnmodifiableListView)
      return _progressOverTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_progressOverTime);
  }

  @override
  String toString() {
    return 'ProgressStats(totalExamsTaken: $totalExamsTaken, averageScore: $averageScore, highestScore: $highestScore, lowestScore: $lowestScore, recentResults: $recentResults, progressOverTime: $progressOverTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressStatsImpl &&
            (identical(other.totalExamsTaken, totalExamsTaken) ||
                other.totalExamsTaken == totalExamsTaken) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore) &&
            (identical(other.highestScore, highestScore) ||
                other.highestScore == highestScore) &&
            (identical(other.lowestScore, lowestScore) ||
                other.lowestScore == lowestScore) &&
            const DeepCollectionEquality()
                .equals(other._recentResults, _recentResults) &&
            const DeepCollectionEquality()
                .equals(other._progressOverTime, _progressOverTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalExamsTaken,
      averageScore,
      highestScore,
      lowestScore,
      const DeepCollectionEquality().hash(_recentResults),
      const DeepCollectionEquality().hash(_progressOverTime));

  /// Create a copy of ProgressStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressStatsImplCopyWith<_$ProgressStatsImpl> get copyWith =>
      __$$ProgressStatsImplCopyWithImpl<_$ProgressStatsImpl>(this, _$identity);
}

abstract class _ProgressStats implements ProgressStats {
  const factory _ProgressStats(
          {required final int totalExamsTaken,
          required final double averageScore,
          required final double highestScore,
          required final double lowestScore,
          required final List<ExamResult> recentResults,
          required final List<MonthlyProgress> progressOverTime}) =
      _$ProgressStatsImpl;

  @override
  int get totalExamsTaken;
  @override
  double get averageScore;
  @override
  double get highestScore;
  @override
  double get lowestScore;
  @override
  List<ExamResult> get recentResults;
  @override
  List<MonthlyProgress> get progressOverTime;

  /// Create a copy of ProgressStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressStatsImplCopyWith<_$ProgressStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExamResult {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  ExamInfo get examId => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  int get totalQuestions => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  List<AnswerDetail> get answerDetails => throw _privateConstructorUsedError;
  DateTime get completedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of ExamResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamResultCopyWith<ExamResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamResultCopyWith<$Res> {
  factory $ExamResultCopyWith(
          ExamResult value, $Res Function(ExamResult) then) =
      _$ExamResultCopyWithImpl<$Res, ExamResult>;
  @useResult
  $Res call(
      {String id,
      String userId,
      ExamInfo examId,
      double score,
      int totalQuestions,
      int correctAnswers,
      List<AnswerDetail> answerDetails,
      DateTime completedAt,
      DateTime createdAt,
      DateTime updatedAt});

  $ExamInfoCopyWith<$Res> get examId;
}

/// @nodoc
class _$ExamResultCopyWithImpl<$Res, $Val extends ExamResult>
    implements $ExamResultCopyWith<$Res> {
  _$ExamResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? examId = null,
    Object? score = null,
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? answerDetails = null,
    Object? completedAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as ExamInfo,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      answerDetails: null == answerDetails
          ? _value.answerDetails
          : answerDetails // ignore: cast_nullable_to_non_nullable
              as List<AnswerDetail>,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ExamResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExamInfoCopyWith<$Res> get examId {
    return $ExamInfoCopyWith<$Res>(_value.examId, (value) {
      return _then(_value.copyWith(examId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExamResultImplCopyWith<$Res>
    implements $ExamResultCopyWith<$Res> {
  factory _$$ExamResultImplCopyWith(
          _$ExamResultImpl value, $Res Function(_$ExamResultImpl) then) =
      __$$ExamResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      ExamInfo examId,
      double score,
      int totalQuestions,
      int correctAnswers,
      List<AnswerDetail> answerDetails,
      DateTime completedAt,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ExamInfoCopyWith<$Res> get examId;
}

/// @nodoc
class __$$ExamResultImplCopyWithImpl<$Res>
    extends _$ExamResultCopyWithImpl<$Res, _$ExamResultImpl>
    implements _$$ExamResultImplCopyWith<$Res> {
  __$$ExamResultImplCopyWithImpl(
      _$ExamResultImpl _value, $Res Function(_$ExamResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? examId = null,
    Object? score = null,
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? answerDetails = null,
    Object? completedAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ExamResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as ExamInfo,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      answerDetails: null == answerDetails
          ? _value._answerDetails
          : answerDetails // ignore: cast_nullable_to_non_nullable
              as List<AnswerDetail>,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ExamResultImpl implements _ExamResult {
  const _$ExamResultImpl(
      {required this.id,
      required this.userId,
      required this.examId,
      required this.score,
      required this.totalQuestions,
      required this.correctAnswers,
      required final List<AnswerDetail> answerDetails,
      required this.completedAt,
      required this.createdAt,
      required this.updatedAt})
      : _answerDetails = answerDetails;

  @override
  final String id;
  @override
  final String userId;
  @override
  final ExamInfo examId;
  @override
  final double score;
  @override
  final int totalQuestions;
  @override
  final int correctAnswers;
  final List<AnswerDetail> _answerDetails;
  @override
  List<AnswerDetail> get answerDetails {
    if (_answerDetails is EqualUnmodifiableListView) return _answerDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerDetails);
  }

  @override
  final DateTime completedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ExamResult(id: $id, userId: $userId, examId: $examId, score: $score, totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, answerDetails: $answerDetails, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            const DeepCollectionEquality()
                .equals(other._answerDetails, _answerDetails) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      examId,
      score,
      totalQuestions,
      correctAnswers,
      const DeepCollectionEquality().hash(_answerDetails),
      completedAt,
      createdAt,
      updatedAt);

  /// Create a copy of ExamResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamResultImplCopyWith<_$ExamResultImpl> get copyWith =>
      __$$ExamResultImplCopyWithImpl<_$ExamResultImpl>(this, _$identity);
}

abstract class _ExamResult implements ExamResult {
  const factory _ExamResult(
      {required final String id,
      required final String userId,
      required final ExamInfo examId,
      required final double score,
      required final int totalQuestions,
      required final int correctAnswers,
      required final List<AnswerDetail> answerDetails,
      required final DateTime completedAt,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ExamResultImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  ExamInfo get examId;
  @override
  double get score;
  @override
  int get totalQuestions;
  @override
  int get correctAnswers;
  @override
  List<AnswerDetail> get answerDetails;
  @override
  DateTime get completedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ExamResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamResultImplCopyWith<_$ExamResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExamInfo {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Create a copy of ExamInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamInfoCopyWith<ExamInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamInfoCopyWith<$Res> {
  factory $ExamInfoCopyWith(ExamInfo value, $Res Function(ExamInfo) then) =
      _$ExamInfoCopyWithImpl<$Res, ExamInfo>;
  @useResult
  $Res call({String id, String title, String category});
}

/// @nodoc
class _$ExamInfoCopyWithImpl<$Res, $Val extends ExamInfo>
    implements $ExamInfoCopyWith<$Res> {
  _$ExamInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamInfoImplCopyWith<$Res>
    implements $ExamInfoCopyWith<$Res> {
  factory _$$ExamInfoImplCopyWith(
          _$ExamInfoImpl value, $Res Function(_$ExamInfoImpl) then) =
      __$$ExamInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String category});
}

/// @nodoc
class __$$ExamInfoImplCopyWithImpl<$Res>
    extends _$ExamInfoCopyWithImpl<$Res, _$ExamInfoImpl>
    implements _$$ExamInfoImplCopyWith<$Res> {
  __$$ExamInfoImplCopyWithImpl(
      _$ExamInfoImpl _value, $Res Function(_$ExamInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
  }) {
    return _then(_$ExamInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExamInfoImpl implements _ExamInfo {
  const _$ExamInfoImpl(
      {required this.id, required this.title, required this.category});

  @override
  final String id;
  @override
  final String title;
  @override
  final String category;

  @override
  String toString() {
    return 'ExamInfo(id: $id, title: $title, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, category);

  /// Create a copy of ExamInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamInfoImplCopyWith<_$ExamInfoImpl> get copyWith =>
      __$$ExamInfoImplCopyWithImpl<_$ExamInfoImpl>(this, _$identity);
}

abstract class _ExamInfo implements ExamInfo {
  const factory _ExamInfo(
      {required final String id,
      required final String title,
      required final String category}) = _$ExamInfoImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get category;

  /// Create a copy of ExamInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamInfoImplCopyWith<_$ExamInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnswerDetail {
  String get questionId => throw _privateConstructorUsedError;
  String get questionText => throw _privateConstructorUsedError;
  int get userAnswer => throw _privateConstructorUsedError;
  int get correctAnswer => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerDetailCopyWith<AnswerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerDetailCopyWith<$Res> {
  factory $AnswerDetailCopyWith(
          AnswerDetail value, $Res Function(AnswerDetail) then) =
      _$AnswerDetailCopyWithImpl<$Res, AnswerDetail>;
  @useResult
  $Res call(
      {String questionId,
      String questionText,
      int userAnswer,
      int correctAnswer,
      bool isCorrect});
}

/// @nodoc
class _$AnswerDetailCopyWithImpl<$Res, $Val extends AnswerDetail>
    implements $AnswerDetailCopyWith<$Res> {
  _$AnswerDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionText = null,
    Object? userAnswer = null,
    Object? correctAnswer = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerDetailImplCopyWith<$Res>
    implements $AnswerDetailCopyWith<$Res> {
  factory _$$AnswerDetailImplCopyWith(
          _$AnswerDetailImpl value, $Res Function(_$AnswerDetailImpl) then) =
      __$$AnswerDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionId,
      String questionText,
      int userAnswer,
      int correctAnswer,
      bool isCorrect});
}

/// @nodoc
class __$$AnswerDetailImplCopyWithImpl<$Res>
    extends _$AnswerDetailCopyWithImpl<$Res, _$AnswerDetailImpl>
    implements _$$AnswerDetailImplCopyWith<$Res> {
  __$$AnswerDetailImplCopyWithImpl(
      _$AnswerDetailImpl _value, $Res Function(_$AnswerDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionText = null,
    Object? userAnswer = null,
    Object? correctAnswer = null,
    Object? isCorrect = null,
  }) {
    return _then(_$AnswerDetailImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AnswerDetailImpl implements _AnswerDetail {
  const _$AnswerDetailImpl(
      {required this.questionId,
      required this.questionText,
      required this.userAnswer,
      required this.correctAnswer,
      required this.isCorrect});

  @override
  final String questionId;
  @override
  final String questionText;
  @override
  final int userAnswer;
  @override
  final int correctAnswer;
  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'AnswerDetail(questionId: $questionId, questionText: $questionText, userAnswer: $userAnswer, correctAnswer: $correctAnswer, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerDetailImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, questionText,
      userAnswer, correctAnswer, isCorrect);

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerDetailImplCopyWith<_$AnswerDetailImpl> get copyWith =>
      __$$AnswerDetailImplCopyWithImpl<_$AnswerDetailImpl>(this, _$identity);
}

abstract class _AnswerDetail implements AnswerDetail {
  const factory _AnswerDetail(
      {required final String questionId,
      required final String questionText,
      required final int userAnswer,
      required final int correctAnswer,
      required final bool isCorrect}) = _$AnswerDetailImpl;

  @override
  String get questionId;
  @override
  String get questionText;
  @override
  int get userAnswer;
  @override
  int get correctAnswer;
  @override
  bool get isCorrect;

  /// Create a copy of AnswerDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerDetailImplCopyWith<_$AnswerDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MonthlyProgress {
  String get month => throw _privateConstructorUsedError;
  double get totalScore => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  double get averageScore => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyProgressCopyWith<MonthlyProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyProgressCopyWith<$Res> {
  factory $MonthlyProgressCopyWith(
          MonthlyProgress value, $Res Function(MonthlyProgress) then) =
      _$MonthlyProgressCopyWithImpl<$Res, MonthlyProgress>;
  @useResult
  $Res call({String month, double totalScore, int count, double averageScore});
}

/// @nodoc
class _$MonthlyProgressCopyWithImpl<$Res, $Val extends MonthlyProgress>
    implements $MonthlyProgressCopyWith<$Res> {
  _$MonthlyProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? totalScore = null,
    Object? count = null,
    Object? averageScore = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyProgressImplCopyWith<$Res>
    implements $MonthlyProgressCopyWith<$Res> {
  factory _$$MonthlyProgressImplCopyWith(_$MonthlyProgressImpl value,
          $Res Function(_$MonthlyProgressImpl) then) =
      __$$MonthlyProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, double totalScore, int count, double averageScore});
}

/// @nodoc
class __$$MonthlyProgressImplCopyWithImpl<$Res>
    extends _$MonthlyProgressCopyWithImpl<$Res, _$MonthlyProgressImpl>
    implements _$$MonthlyProgressImplCopyWith<$Res> {
  __$$MonthlyProgressImplCopyWithImpl(
      _$MonthlyProgressImpl _value, $Res Function(_$MonthlyProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? totalScore = null,
    Object? count = null,
    Object? averageScore = null,
  }) {
    return _then(_$MonthlyProgressImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MonthlyProgressImpl implements _MonthlyProgress {
  const _$MonthlyProgressImpl(
      {required this.month,
      required this.totalScore,
      required this.count,
      required this.averageScore});

  @override
  final String month;
  @override
  final double totalScore;
  @override
  final int count;
  @override
  final double averageScore;

  @override
  String toString() {
    return 'MonthlyProgress(month: $month, totalScore: $totalScore, count: $count, averageScore: $averageScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyProgressImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, month, totalScore, count, averageScore);

  /// Create a copy of MonthlyProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyProgressImplCopyWith<_$MonthlyProgressImpl> get copyWith =>
      __$$MonthlyProgressImplCopyWithImpl<_$MonthlyProgressImpl>(
          this, _$identity);
}

abstract class _MonthlyProgress implements MonthlyProgress {
  const factory _MonthlyProgress(
      {required final String month,
      required final double totalScore,
      required final int count,
      required final double averageScore}) = _$MonthlyProgressImpl;

  @override
  String get month;
  @override
  double get totalScore;
  @override
  int get count;
  @override
  double get averageScore;

  /// Create a copy of MonthlyProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyProgressImplCopyWith<_$MonthlyProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
