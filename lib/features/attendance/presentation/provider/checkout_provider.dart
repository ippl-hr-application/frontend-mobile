import 'dart:convert';
import 'dart:io';
import 'package:meraih_mobile/features/attendance/presentation/provider/attandance_today_provider.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/attendance/data/checkout_repository.dart';
import 'package:meraih_mobile/features/attendance/domain/checkout.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'izin_provider.g.dart';

Future<dynamic> handleCheckout(WidgetRef ref, CheckoutRequest checkout) async {
  final token = ref.watch(authTokenProvider);
  final homeHistoryDataAsyncValue = ref.watch(attandanceTodayProvider);

  // Handle the different states of the FutureProvider
  return homeHistoryDataAsyncValue.when(
    data: (homeHistoryData) async {
      if (homeHistoryData != null && homeHistoryData.attendanceId != null) {
        final attandanceId = homeHistoryData.attendanceId.toString();

        final dio = Dio();
        dio.options.contentType = "multipart/form-data";
        dio.options.headers["Authorization"] = "Bearer $token";
        final checkoutRepository = CheckoutRepository(dio);

        try {
          final checkoutFinal = await checkoutRepository.postCheckout(
            attandanceId,
            checkout.attendance_file,
          );

          if (checkoutFinal.success == true) {
            print("success");
            return checkoutFinal;
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
