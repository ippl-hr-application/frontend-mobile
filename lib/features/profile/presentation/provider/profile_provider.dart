import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/profile/data/profile_service.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

final profileProvider = FutureProvider((ref) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final profileRepository = ProfileRepository(dio);
  final profileHistory = await profileRepository.getProfile();
  if (profileHistory.success == true) {
    return profileHistory.data;
  }
});
