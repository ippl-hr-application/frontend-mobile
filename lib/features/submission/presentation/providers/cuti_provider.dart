import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/cuti_repository.dart';
import 'package:meraih_mobile/features/submission/domain/cuti.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

// part 'cuti_provider.g.dart';

Future<dynamic> handleCutiSubmission(WidgetRef ref, CutiRequest cuti) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.contentType = "multipart/form-data";
  dio.options.headers["Authorization"] = "Bearer $token";
  final cutiRepository = CutiRepository(dio);
  try {
    final cutiSubmission = await cutiRepository.postCuti(
        cuti.to, cuti.from, cuti.leaveReason, cuti.leaveType, cuti.leave_file);

    if (cutiSubmission.success == true) {
      print(cutiSubmission.message);
      return cutiSubmission;
    }
  } on DioException catch (e) {
    print(e.toString());
    if (e.response != null) {
      print(e.response?.data);
    }
    rethrow;
  }
}
