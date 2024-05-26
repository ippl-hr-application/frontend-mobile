import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/homepage/data/annoucment_service.dart';
import 'package:meraih_mobile/features/homepage/domain/annoucment.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

final announcmentProvider = FutureProvider((ref) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final announcmentRepository = AnnouncmentRepository(dio);

  try {
    final announcmentHistory = await announcmentRepository.getAnnouncment();
    return announcmentHistory.data;
  } on DioException {
    rethrow;
  }
});
