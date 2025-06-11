// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_resource_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateResourceRequest _$CreateResourceRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateResourceRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateResourceRequest {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get externalUrl => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this CreateResourceRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateResourceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateResourceRequestCopyWith<CreateResourceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateResourceRequestCopyWith<$Res> {
  factory $CreateResourceRequestCopyWith(CreateResourceRequest value,
          $Res Function(CreateResourceRequest) then) =
      _$CreateResourceRequestCopyWithImpl<$Res, CreateResourceRequest>;
  @useResult
  $Res call(
      {String title,
      String description,
      String type,
      String category,
      String author,
      List<String> tags,
      String externalUrl,
      bool isActive});
}

/// @nodoc
class _$CreateResourceRequestCopyWithImpl<$Res,
        $Val extends CreateResourceRequest>
    implements $CreateResourceRequestCopyWith<$Res> {
  _$CreateResourceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateResourceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? category = null,
    Object? author = null,
    Object? tags = null,
    Object? externalUrl = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      externalUrl: null == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateResourceRequestImplCopyWith<$Res>
    implements $CreateResourceRequestCopyWith<$Res> {
  factory _$$CreateResourceRequestImplCopyWith(
          _$CreateResourceRequestImpl value,
          $Res Function(_$CreateResourceRequestImpl) then) =
      __$$CreateResourceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String type,
      String category,
      String author,
      List<String> tags,
      String externalUrl,
      bool isActive});
}

/// @nodoc
class __$$CreateResourceRequestImplCopyWithImpl<$Res>
    extends _$CreateResourceRequestCopyWithImpl<$Res,
        _$CreateResourceRequestImpl>
    implements _$$CreateResourceRequestImplCopyWith<$Res> {
  __$$CreateResourceRequestImplCopyWithImpl(_$CreateResourceRequestImpl _value,
      $Res Function(_$CreateResourceRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateResourceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? category = null,
    Object? author = null,
    Object? tags = null,
    Object? externalUrl = null,
    Object? isActive = null,
  }) {
    return _then(_$CreateResourceRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      externalUrl: null == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateResourceRequestImpl implements _CreateResourceRequest {
  const _$CreateResourceRequestImpl(
      {required this.title,
      required this.description,
      required this.type,
      required this.category,
      required this.author,
      required final List<String> tags,
      required this.externalUrl,
      required this.isActive})
      : _tags = tags;

  factory _$CreateResourceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateResourceRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
  @override
  final String category;
  @override
  final String author;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String externalUrl;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'CreateResourceRequest(title: $title, description: $description, type: $type, category: $category, author: $author, tags: $tags, externalUrl: $externalUrl, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateResourceRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      type,
      category,
      author,
      const DeepCollectionEquality().hash(_tags),
      externalUrl,
      isActive);

  /// Create a copy of CreateResourceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateResourceRequestImplCopyWith<_$CreateResourceRequestImpl>
      get copyWith => __$$CreateResourceRequestImplCopyWithImpl<
          _$CreateResourceRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateResourceRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateResourceRequest implements CreateResourceRequest {
  const factory _CreateResourceRequest(
      {required final String title,
      required final String description,
      required final String type,
      required final String category,
      required final String author,
      required final List<String> tags,
      required final String externalUrl,
      required final bool isActive}) = _$CreateResourceRequestImpl;

  factory _CreateResourceRequest.fromJson(Map<String, dynamic> json) =
      _$CreateResourceRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get type;
  @override
  String get category;
  @override
  String get author;
  @override
  List<String> get tags;
  @override
  String get externalUrl;
  @override
  bool get isActive;

  /// Create a copy of CreateResourceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateResourceRequestImplCopyWith<_$CreateResourceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
