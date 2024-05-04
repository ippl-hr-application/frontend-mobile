import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/resign_repository.dart';
import 'package:meraih_mobile/features/submission/domain/resign.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'izin_provider.g.dart';

Future<dynamic> handleResignSubmission(ResignRequest resign) async {
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6IjA0MWQ3ZjVhLTI4NmQtNGMzOS1hNjgyLWY4NmI5MDZmNzgyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNDg5MzFjNmQtNDUxZS00MTgzLWE5ZmYtMzBiMzY4NmE3ZjMyIiwiaWF0IjoxNzEzODAxNzM3LCJleHAiOjE3MTQ0MDY1Mzd9.aZgOthS42GM6_3XbAWp8bcnwDrsjiGZ-A15OXg148lY";
  final dio = Dio();
  dio.options.contentType = "multipart/form-data";
  dio.options.headers["Authorization"] = "Bearer $token";
  final resignRepository = ResignRepository(dio);
  try {
    final resignSubmission =
        await resignRepository.postResign(resign.reason, resign.resign_file);

    if (resignSubmission.success == true) {
      print(resignSubmission.message);
      return resignSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
  }
}
