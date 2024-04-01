import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imagekit/imagekit.dart';
import 'package:meraih_mobile/features/submission/data/cuti_repository.dart';
import 'package:meraih_mobile/features/submission/domain/cuti.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'cuti_provider.g.dart';

Future<dynamic> handleCutiSubmission(
    String from, String to, String reason, String type, File file) async {
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImUwN2QxYjYzLWM0ZmEtNDFmYS04YWZiLWMyNzVhOTcwYmVmMSIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNjhjMDRjMGItYTdiZC00ZGNjLWJkMDktMmQ3ZTFkMTkwZGMxIiwiaWF0IjoxNzExOTgxMTgzLCJleHAiOjE3MTI1ODU5ODN9.ZEUGqBheL2Q5XANwfnsD1tURBSkw4kWgC6BXvIm-pmE";
  final dio = Dio();
  dio.options.contentType = "application/json";
  dio.options.headers["Authorization"] = "Bearer $token";
  final cutiRepository = CutiRepository(dio);
  try {
    final imagekit = ImageKit.getInstance();
    final data = await imagekit.upload(file);
    final cutiSubmission = await cutiRepository.postCuti(CutiRequest(
        to: to,
        from: from,
        leave_reason: reason,
        leave_type: type,
        file_name: data.name,
        file_size: data.size,
        file_type: data.fileType,
        file_url: data.url));

    if (cutiSubmission.success == true) {
      print(cutiSubmission.message);
      return cutiSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
  }
}
