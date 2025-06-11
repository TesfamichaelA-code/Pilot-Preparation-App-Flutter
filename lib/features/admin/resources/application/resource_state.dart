import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/resource.dart';

part 'resource_state.freezed.dart';

@freezed
class ResourceState with _$ResourceState {
  const factory ResourceState({
    @Default(false) bool isLoading,
    String? error,
    Resource? createdResource,
  }) = _ResourceState;
} 