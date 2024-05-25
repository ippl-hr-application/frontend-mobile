import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/attendance/data/attandance_history_repository.dart';

final attandanceHistoryProvider =
    FutureProvider.autoDispose.family((ref, String date) async {
  final dio = Dio();

  print(date);

  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final attandanceHistoryRepository = AttandanceHistoryRepository(dio);
  try {
    final attandanceHistory =
        await attandanceHistoryRepository.getAttandanceHistory(date);

    return attandanceHistory.data;
  } on DioException {
    rethrow;
  }
});
