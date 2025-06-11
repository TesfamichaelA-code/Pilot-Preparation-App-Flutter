// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'students_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentsResponse _$StudentsResponseFromJson(Map<String, dynamic> json) {
  return _StudentsResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentsResponse {
  List<Student> get data => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this StudentsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentsResponseCopyWith<StudentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentsResponseCopyWith<$Res> {
  factory $StudentsResponseCopyWith(
          StudentsResponse value, $Res Function(StudentsResponse) then) =
      _$StudentsResponseCopyWithImpl<$Res, StudentsResponse>;
  @useResult
  $Res call({List<Student> data, String status, DateTime timestamp});
}

/// @nodoc
class _$StudentsResponseCopyWithImpl<$Res, $Val extends StudentsResponse>
    implements $StudentsResponseCopyWith<$Res> {
  _$StudentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? status = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentsResponseImplCopyWith<$Res>
    implements $StudentsResponseCopyWith<$Res> {
  factory _$$StudentsResponseImplCopyWith(_$StudentsResponseImpl value,
          $Res Function(_$StudentsResponseImpl) then) =
      __$$StudentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Student> data, String status, DateTime timestamp});
}

/// @nodoc
class __$$StudentsResponseImplCopyWithImpl<$Res>
    extends _$StudentsResponseCopyWithImpl<$Res, _$StudentsResponseImpl>
    implements _$$StudentsResponseImplCopyWith<$Res> {
  __$$StudentsResponseImplCopyWithImpl(_$StudentsResponseImpl _value,
      $Res Function(_$StudentsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? status = null,
    Object? timestamp = null,
  }) {
    return _then(_$StudentsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentsResponseImpl implements _StudentsResponse {
  const _$StudentsResponseImpl(
      {required final List<Student> data,
      required this.status,
      required this.timestamp})
      : _data = data;

  factory _$StudentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentsResponseImplFromJson(json);

  final List<Student> _data;
  @override
  List<Student> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String status;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'StudentsResponse(data: $data, status: $status, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), status, timestamp);

  /// Create a copy of StudentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentsResponseImplCopyWith<_$StudentsResponseImpl> get copyWith =>
      __$$StudentsResponseImplCopyWithImpl<_$StudentsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentsResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentsResponse implements StudentsResponse {
  const factory _StudentsResponse(
      {required final List<Student> data,
      required final String status,
      required final DateTime timestamp}) = _$StudentsResponseImpl;

  factory _StudentsResponse.fromJson(Map<String, dynamic> json) =
      _$StudentsResponseImpl.fromJson;

  @override
  List<Student> get data;
  @override
  String get status;
  @override
  DateTime get timestamp;

  /// Create a copy of StudentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentsResponseImplCopyWith<_$StudentsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
