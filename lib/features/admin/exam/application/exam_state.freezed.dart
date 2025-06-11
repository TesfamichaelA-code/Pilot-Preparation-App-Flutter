// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<Exam>? get exams => throw _privateConstructorUsedError;
  Exam? get selectedExam => throw _privateConstructorUsedError;
  List<ExamQuestion>? get questions => throw _privateConstructorUsedError;
  ExamQuestion? get createdQuestion => throw _privateConstructorUsedError;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamStateCopyWith<ExamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamStateCopyWith<$Res> {
  factory $ExamStateCopyWith(ExamState value, $Res Function(ExamState) then) =
      _$ExamStateCopyWithImpl<$Res, ExamState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      List<Exam>? exams,
      Exam? selectedExam,
      List<ExamQuestion>? questions,
      ExamQuestion? createdQuestion});

  $ExamCopyWith<$Res>? get selectedExam;
}

/// @nodoc
class _$ExamStateCopyWithImpl<$Res, $Val extends ExamState>
    implements $ExamStateCopyWith<$Res> {
  _$ExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? exams = freezed,
    Object? selectedExam = freezed,
    Object? questions = freezed,
    Object? createdQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      exams: freezed == exams
          ? _value.exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>?,
      selectedExam: freezed == selectedExam
          ? _value.selectedExam
          : selectedExam // ignore: cast_nullable_to_non_nullable
              as Exam?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<ExamQuestion>?,
      createdQuestion: freezed == createdQuestion
          ? _value.createdQuestion
          : createdQuestion // ignore: cast_nullable_to_non_nullable
              as ExamQuestion?,
    ) as $Val);
  }

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExamCopyWith<$Res>? get selectedExam {
    if (_value.selectedExam == null) {
      return null;
    }

    return $ExamCopyWith<$Res>(_value.selectedExam!, (value) {
      return _then(_value.copyWith(selectedExam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExamStateImplCopyWith<$Res>
    implements $ExamStateCopyWith<$Res> {
  factory _$$ExamStateImplCopyWith(
          _$ExamStateImpl value, $Res Function(_$ExamStateImpl) then) =
      __$$ExamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      List<Exam>? exams,
      Exam? selectedExam,
      List<ExamQuestion>? questions,
      ExamQuestion? createdQuestion});

  @override
  $ExamCopyWith<$Res>? get selectedExam;
}

/// @nodoc
class __$$ExamStateImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateImpl>
    implements _$$ExamStateImplCopyWith<$Res> {
  __$$ExamStateImplCopyWithImpl(
      _$ExamStateImpl _value, $Res Function(_$ExamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? exams = freezed,
    Object? selectedExam = freezed,
    Object? questions = freezed,
    Object? createdQuestion = freezed,
  }) {
    return _then(_$ExamStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      exams: freezed == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>?,
      selectedExam: freezed == selectedExam
          ? _value.selectedExam
          : selectedExam // ignore: cast_nullable_to_non_nullable
              as Exam?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<ExamQuestion>?,
      createdQuestion: freezed == createdQuestion
          ? _value.createdQuestion
          : createdQuestion // ignore: cast_nullable_to_non_nullable
              as ExamQuestion?,
    ));
  }
}

/// @nodoc

class _$ExamStateImpl extends _ExamState {
  const _$ExamStateImpl(
      {this.isLoading = false,
      this.error,
      final List<Exam>? exams,
      this.selectedExam,
      final List<ExamQuestion>? questions,
      this.createdQuestion})
      : _exams = exams,
        _questions = questions,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  final List<Exam>? _exams;
  @override
  List<Exam>? get exams {
    final value = _exams;
    if (value == null) return null;
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Exam? selectedExam;
  final List<ExamQuestion>? _questions;
  @override
  List<ExamQuestion>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ExamQuestion? createdQuestion;

  @override
  String toString() {
    return 'ExamState(isLoading: $isLoading, error: $error, exams: $exams, selectedExam: $selectedExam, questions: $questions, createdQuestion: $createdQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            (identical(other.selectedExam, selectedExam) ||
                other.selectedExam == selectedExam) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.createdQuestion, createdQuestion) ||
                other.createdQuestion == createdQuestion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      error,
      const DeepCollectionEquality().hash(_exams),
      selectedExam,
      const DeepCollectionEquality().hash(_questions),
      createdQuestion);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateImplCopyWith<_$ExamStateImpl> get copyWith =>
      __$$ExamStateImplCopyWithImpl<_$ExamStateImpl>(this, _$identity);
}

abstract class _ExamState extends ExamState {
  const factory _ExamState(
      {final bool isLoading,
      final String? error,
      final List<Exam>? exams,
      final Exam? selectedExam,
      final List<ExamQuestion>? questions,
      final ExamQuestion? createdQuestion}) = _$ExamStateImpl;
  const _ExamState._() : super._();

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  List<Exam>? get exams;
  @override
  Exam? get selectedExam;
  @override
  List<ExamQuestion>? get questions;
  @override
  ExamQuestion? get createdQuestion;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateImplCopyWith<_$ExamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
