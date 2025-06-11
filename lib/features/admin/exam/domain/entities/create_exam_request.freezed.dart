// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_exam_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateExamRequest _$CreateExamRequestFromJson(Map<String, dynamic> json) {
  return _CreateExamRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateExamRequest {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this CreateExamRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateExamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateExamRequestCopyWith<CreateExamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateExamRequestCopyWith<$Res> {
  factory $CreateExamRequestCopyWith(
          CreateExamRequest value, $Res Function(CreateExamRequest) then) =
      _$CreateExamRequestCopyWithImpl<$Res, CreateExamRequest>;
  @useResult
  $Res call(
      {String title,
      String description,
      String category,
      String difficulty,
      int durationMinutes,
      bool isActive});
}

/// @nodoc
class _$CreateExamRequestCopyWithImpl<$Res, $Val extends CreateExamRequest>
    implements $CreateExamRequestCopyWith<$Res> {
  _$CreateExamRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateExamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? difficulty = null,
    Object? durationMinutes = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateExamRequestImplCopyWith<$Res>
    implements $CreateExamRequestCopyWith<$Res> {
  factory _$$CreateExamRequestImplCopyWith(_$CreateExamRequestImpl value,
          $Res Function(_$CreateExamRequestImpl) then) =
      __$$CreateExamRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String category,
      String difficulty,
      int durationMinutes,
      bool isActive});
}

/// @nodoc
class __$$CreateExamRequestImplCopyWithImpl<$Res>
    extends _$CreateExamRequestCopyWithImpl<$Res, _$CreateExamRequestImpl>
    implements _$$CreateExamRequestImplCopyWith<$Res> {
  __$$CreateExamRequestImplCopyWithImpl(_$CreateExamRequestImpl _value,
      $Res Function(_$CreateExamRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateExamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? difficulty = null,
    Object? durationMinutes = null,
    Object? isActive = null,
  }) {
    return _then(_$CreateExamRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateExamRequestImpl implements _CreateExamRequest {
  const _$CreateExamRequestImpl(
      {required this.title,
      required this.description,
      required this.category,
      required this.difficulty,
      required this.durationMinutes,
      required this.isActive});

  factory _$CreateExamRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateExamRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final String difficulty;
  @override
  final int durationMinutes;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'CreateExamRequest(title: $title, description: $description, category: $category, difficulty: $difficulty, durationMinutes: $durationMinutes, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateExamRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, category,
      difficulty, durationMinutes, isActive);

  /// Create a copy of CreateExamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateExamRequestImplCopyWith<_$CreateExamRequestImpl> get copyWith =>
      __$$CreateExamRequestImplCopyWithImpl<_$CreateExamRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateExamRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateExamRequest implements CreateExamRequest {
  const factory _CreateExamRequest(
      {required final String title,
      required final String description,
      required final String category,
      required final String difficulty,
      required final int durationMinutes,
      required final bool isActive}) = _$CreateExamRequestImpl;

  factory _CreateExamRequest.fromJson(Map<String, dynamic> json) =
      _$CreateExamRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get category;
  @override
  String get difficulty;
  @override
  int get durationMinutes;
  @override
  bool get isActive;

  /// Create a copy of CreateExamRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateExamRequestImplCopyWith<_$CreateExamRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
