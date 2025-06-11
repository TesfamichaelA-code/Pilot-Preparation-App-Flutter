import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class TokenService {
  static const String _tokenKey = 'access_token';
  final FlutterSecureStorage _storage;
  String? _cachedToken;

  TokenService({FlutterSecureStorage? storage}) 
      : _storage = storage ?? const FlutterSecureStorage();

  Future<String?> get accessToken async {
    if (_cachedToken != null) {
      return _cachedToken;
    }
    _cachedToken = await _storage.read(key: _tokenKey);
    return _cachedToken;
  }

  Future<void> setToken(String token) async {
    _cachedToken = token;
    await _storage.write(key: _tokenKey, value: token);
  }

  Future<void> clearToken() async {
    if (_cachedToken != null) {
    }
    _cachedToken = null;
    
    final hasStoredToken = await _storage.containsKey(key: _tokenKey);
    if (hasStoredToken) {
    }
    await _storage.delete(key: _tokenKey);
  }

  Future<bool> get hasToken async {
    final token = await accessToken;
    final hasToken = token != null;
    return hasToken;
  }

  // Helper method to initialize token from storage
  Future<void> init() async {
    _cachedToken = await _storage.read(key: _tokenKey);
    if (_cachedToken != null) {
    } else {
    }
  }
}

final tokenServiceProvider = Provider<TokenService>((ref) {
  final service = TokenService();
  // Initialize the service
  service.init();
  return service;
}); 