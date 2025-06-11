import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/entities/register_request.dart';
import '../domain/repositories/auth_repository.dart';
import '../infrastructure/providers/auth_providers.dart';
import 'auth_state.dart';
import '../../../core/network/dio_client.dart';
import '../../../core/services/token_service.dart';

@injectable
class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthNotifier(this._authRepository) : super(AuthState.initial());

  Future<void> login(String email, String password, WidgetRef ref) async {
    // Set loading state
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final result = await _authRepository.login(email, password);
      
      state = result.fold(
        (error) => state.copyWith(
          error: error,
          isAuthenticated: false,
          isLoading: false,
        ),
        (response) {
          ref.invalidate(dioClientProvider);
          ref.invalidate(tokenServiceProvider);
          final authResponse = response;
          return state.copyWith(
            user: authResponse.user,
            isAuthenticated: authResponse.user != null,
            roles: authResponse.user.roles ?? [],
            error: null,
            isLoading: false,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        error: 'An unexpected error occurred. Please try again.',
        isAuthenticated: false,
        isLoading: false,
      );
    }
  }

  Future<void> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    state = state.copyWith(isLoading: true, error: null, isRegistrationSuccess: false);
    
    try {
      final request = RegisterRequest(
        name: '$firstName $lastName',
        email: email,
        password: password,
      );
      
      final result = await _authRepository.register(request);
      
      state = result.fold(
        (error) => state.copyWith(
          error: error,
          isLoading: false,
          isRegistrationSuccess: false,
        ),
        (_) => state.copyWith(
          isRegistrationSuccess: true,
          isLoading: false,
          error: null,
        ),
      );
    } catch (e) {
      state = state.copyWith(
        error: 'Registration failed. Please try again.',
        isLoading: false,
        isRegistrationSuccess: false,
      );
    }
  }

  Future<void> logout() async {
    // Set loading state
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final result = await _authRepository.logout();
      
      state = result.fold(
        (error) {
          return state.copyWith(
            error: error,
            isLoading: false,
            isAuthenticated: true,
          );
        },
        (_) {
          return const AuthState(
            user: null,
            isAuthenticated: false,
            roles: [],
            isLoading: false,
            error: null,
            isRegistrationSuccess: false,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to logout. Please try again.',
        isLoading: false,
        isAuthenticated: true,
      );
    }
  }

  Future<void> checkAuthStatus() async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final isAuthResult = await _authRepository.isAuthenticated();
      
      state = await isAuthResult.fold(
        (error) async => state.copyWith(
          error: error,
          isAuthenticated: false,
          isLoading: false,
        ),
        (isAuthenticated) async {
          if (!isAuthenticated) {
            return AuthState.initial();
          }

          final rolesResult = await _authRepository.getUserRoles();
          return rolesResult.fold(
            (error) => state.copyWith(
              error: error,
              isLoading: false,
            ),
            (roles) => state.copyWith(
              isAuthenticated: true,
              roles: roles,
              error: null,
              isLoading: false,
            ),
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to check authentication status.',
        isLoading: false,
      );
    }
  }

  bool hasRole(String role) => state.roles.contains(role);

  void clearRegistrationState() {
    state = state.copyWith(isRegistrationSuccess: false, error: null);
  }
}

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.watch(authRepositoryProvider));
}); 