import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/domain/mutasi.dart';
import 'package:meraih_mobile/features/submission/data/mutasi_repository.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

Future<dynamic> handleMutation(WidgetRef ref, MutasiRequest mutasi) async {
  final token = ref.watch(authTokenProvider);
  final dio = Dio();
  dio.options.contentType = "multipart/form-data";
  dio.options.headers["Authorization"] = "Bearer $token";
  final mutationRepository = MutasiRepository(dio);

  try {
    final mutationSubmission = await mutationRepository.postMutasi(
        mutasi.mutationReason,
        mutasi.currenCompanyBranchId,
        mutasi.targetCompanyBranchId,
        mutasi.mutationFile);

    if (mutationSubmission.success == true) {
      return mutationSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
  }
}
