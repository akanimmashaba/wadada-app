// auth_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final authProvider = StateNotifierProvider<AuthNotifier, User?>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<User?> {
  final SupabaseClient _supabase = Supabase.instance.client;
  final _storage = const FlutterSecureStorage();

  AuthNotifier() : super(null) {
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    final session = _supabase.auth.currentSession;
    if (session != null) {
      await _saveToken(session.accessToken);
      state = session.user;
    }
  }

  Future<void> register(String email, String password) async {
    final response = await _supabase.auth.signUp(
      email: email,
      password: password,
    );
    if (response.user != null) {
      await _saveToken(response.session!.accessToken);
      state = response.user;
    } else {
      throw Exception('Registration failed');
    }
  }

  Future<void> login(String email, String password) async {
    final response = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
    if (response.user != null) {
      await _saveToken(response.session!.accessToken);
      state = response.user;
    }
  }

  Future<void> logout() async {
    await _supabase.auth.signOut();
    await _storage.delete(key: 'jwt_token');
    state = null;
  }

  Future<void> _saveToken(String token) async {
    await _storage.write(key: 'jwt_token', value: token);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'jwt_token');
  }
}
