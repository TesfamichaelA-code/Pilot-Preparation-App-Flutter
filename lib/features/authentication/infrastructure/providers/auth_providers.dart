import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/di/injection.dart';
import '../../domain/repositories/auth_repository.dart';
 
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return getIt<AuthRepository>();
}); 