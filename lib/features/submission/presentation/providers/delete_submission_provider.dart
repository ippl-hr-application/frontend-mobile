import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/data/delete_submission.dart';

Future<dynamic> handleDeleteSubmission(id) async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6IjA0MWQ3ZjVhLTI4NmQtNGMzOS1hNjgyLWY4NmI5MDZmNzgyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNDg5MzFjNmQtNDUxZS00MTgzLWE5ZmYtMzBiMzY4NmE3ZjMyIiwiaWF0IjoxNzEzODAxNzM3LCJleHAiOjE3MTQ0MDY1Mzd9.aZgOthS42GM6_3XbAWp8bcnwDrsjiGZ-A15OXg148lY';

  final deleteSubmissionRepository = DeleteSubmission(dio);
  try {
    await deleteSubmissionRepository.deleteSubmission(id);
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response);
    }
  }
}
