import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/data/sakit_repository.dart';
import 'package:meraih_mobile/features/submission/domain/sakit.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

Future<dynamic> handleSakitSubmission(WidgetRef ref, SakitRequest sakit) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.contentType = "multipart/form-data";
  dio.options.headers['Authorization'] = 'Bearer $token';
  final sakitRepository = SakitRepository(dio);
  try {
    final sakitSubmission = await sakitRepository.postSakit(
        sakit.from, sakit.permissionReason, sakit.to, sakit.sickFile);

    if (sakitSubmission.success == true) {
      print(sakitSubmission.message);
      return sakitSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
    rethrow;
  }
}
