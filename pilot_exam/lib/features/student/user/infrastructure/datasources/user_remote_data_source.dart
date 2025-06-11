import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/constants/api_constants.dart';
import '../../../../../core/network/dio_client.dart';
import '../../domain/entities/profile_response.dart';
import '../../domain/entities/update_profile_request.dart';

abstract class UserRemoteDataSource {
  Future<ProfileResponse> getProfile();
  Future<ProfileResponse> updateProfile(String userId, UpdateProfileRequest request);
}

@Injectable(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioClient _dioClient;

  UserRemoteDataSourceImpl(this._dioClient);

  @override
  Future<ProfileResponse> getProfile() async {
    try {
      final response = await _dioClient.get(
        ApiConstants.profile,
      );

      if (response.statusCode == 200) {
        return ProfileResponse.fromJson(response.data);
      }
      throw Exception(response.data['message'] ?? 'Failed to get profile');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to get profile. Please check your internet connection.');
    }
  }

  @override
  Future<ProfileResponse> updateProfile(String userId, UpdateProfileRequest request) async {
    try {
      final response = await _dioClient.put(
        '/users/$userId',
        data: request.toJson(),
      );

      if (response.statusCode == 200) {
        return ProfileResponse.fromJson(response.data);
      }
      throw Exception(response.data['message'] ?? 'Failed to update profile');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to update profile. Please check your internet connection.');
    }
  }
} 