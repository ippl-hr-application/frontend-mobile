import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/homepage/data/profile_service.dart';

final homeProvider = FutureProvider((ref) async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImFoai1hZGJhZHV5MyIsImNvbXBhbnlfYnJhbmNoX2lkIjoxLCJpYXQiOjE3MTExOTcwNTgsImV4cCI6MTcxMTgwMTg1OH0.Xc1B13g134tdCUB_3M9cexwjf2SB0n6GMiT_sBFQbuM';
  final homeRepository = HomeRepository(dio);
  final homeHistory = await homeRepository.getHomeData();
  if (homeHistory.success == true) {
    return homeHistory.data;
  }
});
