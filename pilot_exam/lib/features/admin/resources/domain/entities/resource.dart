import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource.freezed.dart';
part 'resource.g.dart';

@freezed
class Resource with _$Resource {
  const factory Resource({
    required String title,
    required String description,
    required String type,
    required String category,
    required String author,
    required List<String> tags,
    required String externalUrl,
    required bool isActive,
    @JsonKey(name: '_id') required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int v,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);
} 