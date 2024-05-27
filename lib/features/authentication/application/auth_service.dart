import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meraih_mobile/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/auth_repository.dart';
// part 'auth_service.g.dart';

class AuthService {
  static Future<void> login(LoginRequest auth) async {
    final dio = Dio();
    dio.options.contentType = 'application/json';
    final authRepository = AuthRepository(dio);
    try {
      final response = await authRepository.login(auth);
      final token = response.data?.token;
      if (token != null) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', token);
        print('Token saved: $token'); // Logging the token
      } else {
        print('No token received'); // Logging in case no token is received
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        print('Login failed: ${e.response?.data['message']}'); // Logging the error message
        rethrow;
      } else {
        print('Unexpected error: $e'); // Logging unexpected errors
      }
    }
  }
}
