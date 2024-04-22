import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/data/delete_submission.dart';

Future<dynamic> handleDeleteShift() async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6Ijg0YWUyNzdiLTJkMWUtNDZmYS1hZGQ2LTU2YzFlMzI0NzEyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNzAyY2FlZGQtZDA1MS00NmJiLWI3YmYtOWY5MjQwYzBhNjI4IiwiaWF0IjoxNzEzMTgzOTY3LCJleHAiOjE3MTM3ODg3Njd9.51XLTkptFmZJAYWAsY4YIVK0PNt7rBZl2XOF64QN8ng';

  final deleteSubmissionRepository = DeleteSubmission(dio);
  try {
    final deleteSubmission =
        await deleteSubmissionRepository.deleteSubmission();

    if (deleteSubmission.success == true) {
      print(deleteSubmission.message);
      return deleteSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response);
    }
  }
}
