import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/attendance/data/attandance_today_repository.dart';

final attandanceTodayProvider = FutureProvider((ref) async {
  final dio = Dio();

  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final attandanceTodayRepository = AttandanceTodayRepository(dio);
  try {
    final attandanceTodayHistory =
        await attandanceTodayRepository.getAttandanceToday();
    return attandanceTodayHistory.data;
  } on DioException {
    rethrow;
  }
});
