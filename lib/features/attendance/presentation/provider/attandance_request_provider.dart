import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/attendance/data/request_attandance_repository.dart';
import 'package:meraih_mobile/features/attendance/domain/attandance_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

Future<dynamic> handleRequestAttandance(
    WidgetRef ref, AttandanceRequest request) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.contentType = "multipart/form-data";
  dio.options.headers["Authorization"] = "Bearer $token";

  final attandanceRequestRepository = RequestAttandanceRepository(dio);
  print(request.attendanceId);
  print(request.reason);
  print(request.attendanceSubmissionFile);

  try {
    final attandanceHistory =
        await attandanceRequestRepository.postRequestAttandance(
            request.attendanceId,
            request.reason,
            request.attendanceSubmissionFile);
    return attandanceHistory;
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
  }
}
