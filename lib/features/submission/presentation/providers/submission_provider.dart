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
    final year = params['year'] ?? '';
    final month = params['month'] ?? '';
    final status = params['status'] ?? '';

    print('Success');

    print('Year: $year, Month: $month, Status: $status');
    final submissionHistory = await submissionRepository.getSubmissionHistory(
      year,
      month,
      status,
    );

    if (submissionHistory.success == true) {
      print('Sucesss');
      return submissionHistory.data;
    }
  } on DioException {
    rethrow;
  }
});
