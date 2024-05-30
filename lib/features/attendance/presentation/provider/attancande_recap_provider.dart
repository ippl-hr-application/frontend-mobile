import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/attendance/data/attandance_recap_repository.dart';

final attandanceRecapProvider = FutureProvider.family((ref, Map<String, String> params) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final attandanceRecapRepository = AttandanceRecapRepository(dio);
  try {
    final attandanceRecapHistory =
        await attandanceRecapRepository.getAttandanceRecap(params['month']!, params['year']!);
    return attandanceRecapHistory.data;
  } on DioException {
    rethrow;
  }
});
