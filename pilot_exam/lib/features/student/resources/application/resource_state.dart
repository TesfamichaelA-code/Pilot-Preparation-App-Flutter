import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/resource.dart';

part 'resource_state.freezed.dart';

@freezed
class ResourceState with _$ResourceState {
  const factory ResourceState({
    @Default([]) List<Resource> resources,
    @Default(false) bool isLoading,
    String? error,
    String? selectedCategory,
  }) = _ResourceState;

  const ResourceState._();

  List<Resource> get filteredResources => resources
    .where((resource) => this.selectedCategory == null || resource.type == this.selectedCategory)
    .toList();

  List<String> get availableTypes => resources
    .map((resource) => resource.type)
    .toSet()
    .toList()
    ..sort();
} 