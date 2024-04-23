import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/domain/mutasi.dart';
import 'package:meraih_mobile/features/submission/data/mutasi_repository.dart';

Future<dynamic> handleMutation(MutasiRequest mutasi) async {
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6IjA0MWQ3ZjVhLTI4NmQtNGMzOS1hNjgyLWY4NmI5MDZmNzgyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNDg5MzFjNmQtNDUxZS00MTgzLWE5ZmYtMzBiMzY4NmE3ZjMyIiwiaWF0IjoxNzEzODAxNzM3LCJleHAiOjE3MTQ0MDY1Mzd9.aZgOthS42GM6_3XbAWp8bcnwDrsjiGZ-A15OXg148lY";
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
