import 'dart:convert';
import 'dart:io';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/izin_repository.dart';
import 'package:meraih_mobile/features/submission/domain/izin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'izin_provider.g.dart';

Future<dynamic> handleIzinSubmission(WidgetRef ref, IzinRequest izin) async {
  final token = ref.watch(authTokenProvider);
  final dio = Dio();
  dio.options.contentType = "multipart/form-data";
  dio.options.headers["Authorization"] = "Bearer $token";
  final izinRepository = IzinRepository(dio);
  try {
    final izinSubmission = await izinRepository.postIzin(
        izin.from, izin.permission_reason, izin.permission_file, izin.to);

    if (izinSubmission.success == true) {
      print(izinSubmission.message);
      return izinSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
  }
}
