import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/attendance/data/attandance_history_repository.dart';

final attandanceHistoryProvider =
    FutureProvider.family<dynamic, Map<String, dynamic>>((ref, params) async {
  final dio = Dio();

  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final attandanceHistoryRepository = AttandanceHistoryRepository(dio);
  try {
    final date = params['date'] ?? '';
    final attandanceHistory =
        await attandanceHistoryRepository.getAttandanceHistory(date);

    if (attandanceHistory.success == true) {
      print(attandanceHistory.data);
      return attandanceHistory.data;
    }
  } on DioException {
    rethrow;
  }
});
