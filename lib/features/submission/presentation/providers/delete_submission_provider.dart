import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/data/delete_submission.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

Future<dynamic> handleDeleteSubmission(id) async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6IjA0MWQ3ZjVhLTI4NmQtNGMzOS1hNjgyLWY4NmI5MDZmNzgyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNDg5MzFjNmQtNDUxZS00MTgzLWE5ZmYtMzBiMzY4NmE3ZjMyIiwiaWF0IjoxNzE0ODUwNTQzLCJleHAiOjE3MTU0NTUzNDN9.9meDcn11nPdyFG7KjFQRK8wouAmn2e9JUfpnG4oU1S0';

  final deleteSubmissionRepository = DeleteSubmission(dio);
  try {
    await deleteSubmissionRepository.deleteSubmission(id);
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response);
    }
  }
}
