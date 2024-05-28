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
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token!);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        rethrow;
      }
    }
  }
}
