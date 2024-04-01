import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imagekit/imagekit.dart';
import 'package:meraih_mobile/features/submission/data/izin_repository.dart';
import 'package:meraih_mobile/features/submission/domain/izin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'izin_provider.g.dart';

Future<dynamic> handleIzinSubmission(
    String from, String to, String reason, File file) async {
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImUwN2QxYjYzLWM0ZmEtNDFmYS04YWZiLWMyNzVhOTcwYmVmMSIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNjhjMDRjMGItYTdiZC00ZGNjLWJkMDktMmQ3ZTFkMTkwZGMxIiwiaWF0IjoxNzExOTgxMTgzLCJleHAiOjE3MTI1ODU5ODN9.ZEUGqBheL2Q5XANwfnsD1tURBSkw4kWgC6BXvIm-pmE";
  final dio = Dio();
  dio.options.contentType = "application/json";
  dio.options.headers["Authorization"] = "Bearer $token";
  final izinRepository = IzinRepository(dio);
  try {
    final imagekit = ImageKit.getInstance();
    final data = await imagekit.upload(file);
    final izinSubmission = await izinRepository.postIzin(IzinRequest(
        to: to,
        from: from,
        permission_reason: reason,
        file_name: data.name,
        file_size: data.size,
        file_type: data.fileType,
        file_url: data.url));

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
