import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/features/authentication/application/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authTokenProvider = StateProvider<String?>((ref) => null);

Future<dynamic> handleLogin(WidgetRef ref, LoginRequest auth) async {
  try {
    await AuthService.login(auth);
    final authToken = ref.watch(authTokenProvider);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final retrievedToken = prefs.getString('token');

    if (retrievedToken != null && retrievedToken != authToken) {
      ref.read(authTokenProvider.notifier).state = retrievedToken;
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 400) {
      throw Exception(e.response?.data['message']);
    }
  }
}
