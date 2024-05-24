import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/submission/data/submission_repository.dart';

final submissionProvider = FutureProvider.autoDispose
    .family<dynamic, Map<String, dynamic>>((ref, params) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final submissionRepository = SubmissionRepository(dio);
  try {
    final submissionHistory = await submissionRepository.getSubmissionHistory(
      params['year'].toString(),
      params['month'].toString(),
      params['status'].toString(),
    );
    return submissionHistory.data;
  } on DioException {
    rethrow;
  }
});
