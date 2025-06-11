import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/profile_response.dart';
import '../../domain/entities/update_profile_request.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_data_source.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, ProfileResponse>> getProfile() async {
    try {
      final response = await _remoteDataSource.getProfile();
      return Right(response);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }

  @override
  Future<Either<String, ProfileResponse>> updateProfile(String userId, UpdateProfileRequest request) async {
    try {
      final response = await _remoteDataSource.updateProfile(userId, request);
      return Right(response);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }
} 