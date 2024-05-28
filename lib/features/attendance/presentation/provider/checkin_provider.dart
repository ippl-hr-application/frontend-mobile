import 'dart:convert';
import 'dart:io';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/attendance/data/checkin_repository.dart';
import 'package:meraih_mobile/features/attendance/domain/checkin.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'izin_provider.g.dart';

Future<dynamic> handleCheckin(WidgetRef ref, CheckinRequest checkin) async {
  final token = ref.watch(authTokenProvider);
  final homeHistoryDataAsyncValue = ref.watch(homeProvider);

  // Handle the different states of the FutureProvider
  return homeHistoryDataAsyncValue.when(
    data: (homeHistoryData) async {
      if (homeHistoryData != null && homeHistoryData.shiftId != null) {
        final shiftId = homeHistoryData.shiftId.toString();

        final dio = Dio();
        dio.options.contentType = "multipart/form-data";
        dio.options.headers["Authorization"] = "Bearer $token";
        final checkinRepository = CheckinRepository(dio);

        try {
          final checkinFinal = await checkinRepository.postCheckin(
            shiftId,
            checkin.attendance_file,
          );

          if (checkinFinal.success == true) {
            print("success");
            return checkinFinal;
          }
        } on DioException catch (e) {
          if (e.response != null) {
            print(e.response?.data);
          }
        }
      } else {
        print("Shift ID is null or Home History Data is null");
      }
    },
    loading: () => print("Loading home history data..."),
    error: (error, stackTrace) {
      print("Error loading home history data: $error");
    },
  );
}
