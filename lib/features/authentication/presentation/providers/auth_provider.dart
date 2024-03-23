import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/application/auth_service.dart';
import 'package:meraih_mobile/features/authentication/domain/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

final jwtProvider = FutureProvider<String?>((ref) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
});

Future<void> handleLogin(LoginRequest auth) async {
  await AuthService.login(auth);
}
