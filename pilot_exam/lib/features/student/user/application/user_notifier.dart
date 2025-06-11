import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import '../domain/repositories/user_repository.dart';
import '../infrastructure/providers/user_providers.dart';
import 'user_state.dart';

@injectable
class UserNotifier extends StateNotifier<UserState> {
  final UserRepository _userRepository;

  UserNotifier(this._userRepository) : super(UserState.initial());

  Future<void> getProfile() async {
    state = UserState.loading();
    
    try {
      final result = await _userRepository.getProfile();
      
      state = result.fold(
        (error) => UserState.error(error),
        (response) => UserState.loaded(response.data),
      );
    } catch (e) {
      state = UserState.error('Failed to load profile. Please try again.');
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

final userNotifierProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier(ref.watch(userRepositoryProvider));
}); 