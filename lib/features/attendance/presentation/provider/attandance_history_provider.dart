import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/attendance/data/attandance_history_repository.dart';

final attandanceHistoryRepository = FutureProvider((ref) async {
  final dio = Dio();

  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final attandanceHistoryRepository = AttandanceHistoryRepository(dio);
  try {
    final attandanceHistory =
        await attandanceHistoryRepository.getAttandanceHistory();
    return attandanceHistory.data;
  } on DioException {
    rethrow;
  }
});
