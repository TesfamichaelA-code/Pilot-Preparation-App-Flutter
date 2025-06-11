import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/token_service.dart';
import '../../../../core/network/dio_client.dart';
import '../../domain/entities/auth_response.dart';
import '../../domain/entities/register_request.dart';
import '../../domain/entities/register_response.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../../../../core/constants/api_constants.dart';
import 'package:dio/dio.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final TokenService _tokenService;
  final DioClient _dioClient;

  AuthRepositoryImpl(
    this._remoteDataSource, 
    this._tokenService,
    this._dioClient,
  );

  @override
  Future<Either<String, AuthResponse>> login(String email, String password) async {
    try {
      final response = await _remoteDataSource.login(email, password);
      await _tokenService.setToken(response.accessToken);
      return Right(response);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }

  @override
  Future<Either<String, RegisterResponse>> register(RegisterRequest request) async {
    try {
      final response = await _remoteDataSource.register(request);
      return Right(response);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }

  @override
  Future<Either<String, void>> logout() async {
    try {
      // Clear the token from secure storage
      await _tokenService.clearToken();
      
      // Clear any Authorization headers and reset dio client
      _dioClient.dio.options.headers.clear();
      
      _dioClient.dio.options = BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        responseType: ResponseType.json,
      );
      
      return const Right(null);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> isAuthenticated() async {
    try {
      final hasToken = await _tokenService.hasToken;
      return Right(hasToken);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<String>>> getUserRoles() async {
    try {
      return const Right(['student']);
    } catch (e) {
      return Left(e.toString());
    }
  }
} 