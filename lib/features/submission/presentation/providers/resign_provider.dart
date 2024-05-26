import 'dart:convert';
import 'dart:io';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/resign_repository.dart';
import 'package:meraih_mobile/features/submission/domain/resign.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'izin_provider.g.dart';

Future<dynamic> handleResignSubmission(
    WidgetRef ref, ResignRequest resign) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
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
