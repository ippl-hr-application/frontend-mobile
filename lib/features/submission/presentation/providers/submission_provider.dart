import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/submission/data/submission_repository.dart';

final submissionProvider = FutureProvider((ref) async {
  // final token = await ref.watch(jwtProvider.future);
  final dio = Dio();

  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6Ijg0YWUyNzdiLTJkMWUtNDZmYS1hZGQ2LTU2YzFlMzI0NzEyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNzAyY2FlZGQtZDA1MS00NmJiLWI3YmYtOWY5MjQwYzBhNjI4IiwiaWF0IjoxNzEzMTgzOTY3LCJleHAiOjE3MTM3ODg3Njd9.51XLTkptFmZJAYWAsY4YIVK0PNt7rBZl2XOF64QN8ng';
  final submissionRepository = SubmissionRepository(dio);
  final submissionHistory = await submissionRepository.getSubmissionHistory();
  if (submissionHistory.success == true) {
    return submissionHistory.data;
  }
});
