import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    @Default(false) bool isAuthenticated,
    @Default([]) List<String> roles,
    @Default(false) bool isLoading,
    String? error,
    @Default(false) bool isRegistrationSuccess,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState();
  
  factory AuthState.loading() => const AuthState(isLoading: true);
  
  factory AuthState.error(String message) => AuthState(
    error: message,
    isLoading: false,
    isAuthenticated: false,
  );
  
  factory AuthState.authenticated(User user, List<String> roles) => AuthState(
    user: user,
    roles: roles,
    isAuthenticated: true,
    isLoading: false,
    error: null,
  );

  factory AuthState.registrationSuccess() => const AuthState(
    isRegistrationSuccess: true,
    isLoading: false,
    error: null,
  );
} 