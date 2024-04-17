import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/izin_repository.dart';
import 'package:meraih_mobile/features/submission/domain/izin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'izin_provider.g.dart';

Future<dynamic> handleIzinSubmission(IzinRequest izin) async {
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6Ijg0YWUyNzdiLTJkMWUtNDZmYS1hZGQ2LTU2YzFlMzI0NzEyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNzAyY2FlZGQtZDA1MS00NmJiLWI3YmYtOWY5MjQwYzBhNjI4IiwiaWF0IjoxNzEzMTgzOTY3LCJleHAiOjE3MTM3ODg3Njd9.51XLTkptFmZJAYWAsY4YIVK0PNt7rBZl2XOF64QN8ng";
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
