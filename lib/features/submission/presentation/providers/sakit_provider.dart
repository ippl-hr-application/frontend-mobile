import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imagekit/imagekit.dart';
import 'package:meraih_mobile/features/submission/data/sakit_repository.dart';
import 'package:meraih_mobile/features/submission/domain/sakit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

Future<dynamic> handleSakitSubmission(SakitRequest sakit) async {
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6Ijg0YWUyNzdiLTJkMWUtNDZmYS1hZGQ2LTU2YzFlMzI0NzEyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNzAyY2FlZGQtZDA1MS00NmJiLWI3YmYtOWY5MjQwYzBhNjI4IiwiaWF0IjoxNzEzMTgzOTY3LCJleHAiOjE3MTM3ODg3Njd9.51XLTkptFmZJAYWAsY4YIVK0PNt7rBZl2XOF64QN8ng";
  final dio = Dio();
  dio.options.contentType = "multipart/form-data";
  dio.options.headers["Authorization"] = "Bearer $token";
  final sakitRepository = SakitRepository(dio);
  try {
    final sakitSubmission = await sakitRepository.postSakit(
        sakit.from, sakit.permissionReason, sakit.to, sakit.sickFile);

    if (sakitSubmission.success == true) {
      print(sakitSubmission.message);
      return sakitSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
  }
}
