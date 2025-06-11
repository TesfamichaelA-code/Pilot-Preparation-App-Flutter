// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_student_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminStudentUser _$AdminStudentUserFromJson(Map<String, dynamic> json) {
  return _AdminStudentUser.fromJson(json);
}

/// @nodoc
mixin _$AdminStudentUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this AdminStudentUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminStudentUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminStudentUserCopyWith<AdminStudentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStudentUserCopyWith<$Res> {
  factory $AdminStudentUserCopyWith(
          AdminStudentUser value, $Res Function(AdminStudentUser) then) =
      _$AdminStudentUserCopyWithImpl<$Res, AdminStudentUser>;
  @useResult
  $Res call({String id, String name, String email});
}

/// @nodoc
class _$AdminStudentUserCopyWithImpl<$Res, $Val extends AdminStudentUser>
    implements $AdminStudentUserCopyWith<$Res> {
  _$AdminStudentUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminStudentUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminStudentUserImplCopyWith<$Res>
    implements $AdminStudentUserCopyWith<$Res> {
  factory _$$AdminStudentUserImplCopyWith(_$AdminStudentUserImpl value,
          $Res Function(_$AdminStudentUserImpl) then) =
      __$$AdminStudentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String email});
}

/// @nodoc
class __$$AdminStudentUserImplCopyWithImpl<$Res>
    extends _$AdminStudentUserCopyWithImpl<$Res, _$AdminStudentUserImpl>
    implements _$$AdminStudentUserImplCopyWith<$Res> {
  __$$AdminStudentUserImplCopyWithImpl(_$AdminStudentUserImpl _value,
      $Res Function(_$AdminStudentUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminStudentUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$AdminStudentUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminStudentUserImpl implements _AdminStudentUser {
  const _$AdminStudentUserImpl(
      {required this.id, required this.name, required this.email});

  factory _$AdminStudentUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminStudentUserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'AdminStudentUser(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminStudentUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  /// Create a copy of AdminStudentUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminStudentUserImplCopyWith<_$AdminStudentUserImpl> get copyWith =>
      __$$AdminStudentUserImplCopyWithImpl<_$AdminStudentUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminStudentUserImplToJson(
      this,
    );
  }
}

abstract class _AdminStudentUser implements AdminStudentUser {
  const factory _AdminStudentUser(
      {required final String id,
      required final String name,
      required final String email}) = _$AdminStudentUserImpl;

  factory _AdminStudentUser.fromJson(Map<String, dynamic> json) =
      _$AdminStudentUserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;

  /// Create a copy of AdminStudentUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminStudentUserImplCopyWith<_$AdminStudentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
