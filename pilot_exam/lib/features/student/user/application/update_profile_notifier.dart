import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/repositories/user_repository.dart';
import '../domain/entities/update_profile_request.dart';
import '../infrastructure/providers/user_providers.dart';
import 'update_profile_state.dart';

@injectable
class UpdateProfileNotifier extends StateNotifier<UpdateProfileState> {
  final UserRepository _userRepository;

  UpdateProfileNotifier(this._userRepository) : super(UpdateProfileState.initial());

  Future<void> updateProfile({
    required String userId,
    required String name,
    required String email,
    String? password,
    List<String> roles = const ['student'],
  }) async {
    state = state.copyWith(isLoading: true, error: null, isSuccess: false);
    
    try {
      final request = UpdateProfileRequest(
        name: name,
        email: email,
        password: password,
        roles: roles,
      );
      
      final result = await _userRepository.updateProfile(userId, request);
      
      state = result.fold(
        (error) => state.copyWith(
          error: error,
          isLoading: false,
          isSuccess: false,
        ),
        (response) => state.copyWith(
          isLoading: false,
          error: null,
          isSuccess: true,
        ),
      );
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to update profile. Please try again.',
        isLoading: false,
        isSuccess: false,
      );
    }
  }

  void clearState() {
    state = UpdateProfileState.initial();
  }
}

final updateProfileNotifierProvider = StateNotifierProvider<UpdateProfileNotifier, UpdateProfileState>((ref) {
  return UpdateProfileNotifier(ref.watch(userRepositoryProvider));
}); 