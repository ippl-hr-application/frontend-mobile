import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/delete_submission.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

Future<dynamic> handleDeleteSubmission(WidgetRef ref, int id) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';
  final deleteSubmissionRepository = DeleteSubmission(dio);
  try {
    await deleteSubmissionRepository.deleteSubmission(id);
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response);
    }
  }
}
