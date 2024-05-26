import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/homepage/data/home_service.dart';
import 'package:meraih_mobile/features/homepage/domain/home.dart';
import 'package:meraih_mobile/utils/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

final homeProvider = FutureProvider<HomeData?>((ref) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';
  final homeRepository = HomeRepository(dio);
  try {
    final homeHistory = await homeRepository.getHomeData();
    return homeHistory.data;
  } on DioException {
    rethrow;
  }
});
