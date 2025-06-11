import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_resource_request.freezed.dart';
part 'create_resource_request.g.dart';

@freezed
class CreateResourceRequest with _$CreateResourceRequest {
  const factory CreateResourceRequest({
    required String title,
    required String description,
    required String type,
    required String category,
    required String author,
    required List<String> tags,
    required String externalUrl,
    required bool isActive,
  }) = _CreateResourceRequest;

  factory CreateResourceRequest.fromJson(Map<String, dynamic> json) => _$CreateResourceRequestFromJson(json);
} 