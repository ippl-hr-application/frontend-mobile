import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/data/change_shift_repository.dart';
import 'package:meraih_mobile/features/submission/data/submission_repository.dart';
import 'package:meraih_mobile/features/submission/domain/change_shift.dart';

Future<dynamic> handleChangeShift(ChangeShiftRequest changeShif) async {
  final dio = Dio();
  print(changeShif.targetShift.runtimeType);
  print(changeShif.currentShift.runtimeType);

  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6Ijg0YWUyNzdiLTJkMWUtNDZmYS1hZGQ2LTU2YzFlMzI0NzEyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNzAyY2FlZGQtZDA1MS00NmJiLWI3YmYtOWY5MjQwYzBhNjI4IiwiaWF0IjoxNzEzMTgzOTY3LCJleHAiOjE3MTM3ODg3Njd9.51XLTkptFmZJAYWAsY4YIVK0PNt7rBZl2XOF64QN8ng';
  dio.options.contentType = "application/json";

  final changeShiftRepository = ShiftRepository(dio);
  try {
    final changeShiftSubmission =
        await changeShiftRepository.postChangeShift(changeShif);

    if (changeShiftSubmission.success == true) {
      print(changeShiftSubmission.message);
      return changeShiftSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response);
    }
  }
}
