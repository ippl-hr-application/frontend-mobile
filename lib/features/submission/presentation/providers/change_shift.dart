import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/data/change_shift_repository.dart';
import 'package:meraih_mobile/features/submission/data/submission_repository.dart';
import 'package:meraih_mobile/features/submission/domain/change_shift.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

Future<dynamic> handleChangeShift(ChangeShiftRequest changeShif) async {
  final dio = Dio();

  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6IjA0MWQ3ZjVhLTI4NmQtNGMzOS1hNjgyLWY4NmI5MDZmNzgyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNDg5MzFjNmQtNDUxZS00MTgzLWE5ZmYtMzBiMzY4NmE3ZjMyIiwiaWF0IjoxNzEzODQ1MDQ3LCJleHAiOjE3MTQ0NDk4NDd9.nFyBg4fGqPyXFa1Wvef2rjIqZ0FOnbZErk72i4j-fD0';
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
