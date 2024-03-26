import 'package:dio/dio.dart';
import 'package:meraih_mobile/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/auth_repository.dart';
part 'auth_service.g.dart';

class AuthService {
  final AuthRepository _authRepository;

  AuthService(this._authRepository);
  Future<void> login(LoginRequest auth) async {
    final response = await _authRepository.login(auth);
    if (response.success == true) {
      final token = response.data?.token;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token!);
    }
  }
}

@Riverpod(keepAlive: true)
AuthService authService(AuthServiceRef ref) {
  return AuthService(AuthRepository(
    Dio(BaseOptions(contentType: 'application/json')),
  ));
}
