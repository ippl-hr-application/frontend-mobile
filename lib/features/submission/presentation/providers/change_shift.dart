import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/data/change_shift_repository.dart';
import 'package:meraih_mobile/features/submission/data/submission_repository.dart';
import 'package:meraih_mobile/features/submission/domain/change_shift.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<dynamic> handleChangeShift(
    WidgetRef ref, ChangeShiftRequest changeShif) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.contentType = "application/json";
  dio.options.headers['Authorization'] = 'Bearer $token';
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
