import 'package:dartz/dartz.dart';
import '../entities/auth_response.dart';
import '../entities/register_request.dart';
import '../entities/register_response.dart';

abstract class AuthRepository {
  Future<Either<String, AuthResponse>> login(String email, String password);
  Future<Either<String, RegisterResponse>> register(RegisterRequest request);
  Future<Either<String, void>> logout();
  Future<Either<String, bool>> isAuthenticated();
  Future<Either<String, List<String>>> getUserRoles();
} 