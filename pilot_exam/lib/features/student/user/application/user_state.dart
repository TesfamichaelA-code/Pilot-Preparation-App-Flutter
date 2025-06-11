import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../features/authentication/domain/entities/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    User? user,
    @Default(false) bool isLoading,
    String? error,
  }) = _UserState;

  factory UserState.initial() => const UserState();
  
  factory UserState.loading() => const UserState(isLoading: true);
  
  factory UserState.error(String message) => UserState(
    error: message,
    isLoading: false,
  );
  
  factory UserState.loaded(User user) => UserState(
    user: user,
    isLoading: false,
    error: null,
  );
} 