import 'package:dartz/dartz.dart';
import '../entities/profile_response.dart';
import '../entities/update_profile_request.dart';

abstract class UserRepository {
  Future<Either<String, ProfileResponse>> getProfile();
  Future<Either<String, ProfileResponse>> updateProfile(String userId, UpdateProfileRequest request);
} 