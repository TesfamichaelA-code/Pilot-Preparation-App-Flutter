import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource.freezed.dart';
part 'resource.g.dart';

@freezed
class Resource with _$Resource {
  const factory Resource({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String description,
    required String type,
    required String category,
    required String author,
    required List<String> tags,
    required String externalUrl,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);

  // Static filtering methods
  static List<Resource> filterByCategory(
    List<Resource> resources,
    String? category,
  ) {
    if (category == null) {
      return resources;
    }
    
    return resources.where((resource) => 
      resource.category.toLowerCase() == category.toLowerCase()
    ).toList();
  }

  static List<Resource> filterByType(
    List<Resource> resources,
    String? type,
  ) {
    if (type == null) {
      return resources;
    }
    
    return resources.where((resource) => 
      resource.type.toLowerCase() == type.toLowerCase()
    ).toList();
  }
} 