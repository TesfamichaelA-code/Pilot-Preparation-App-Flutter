import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../authentication/domain/entities/user.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required User data,
    required String status,
    required String timestamp,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);
} 