import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/homepage/data/profile_service.dart';

final homeProvider = FutureProvider((ref) async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImFoai1hZGJhZHV5MyIsImNvbXBhbnlfYnJhbmNoX2lkIjoxLCJpYXQiOjE3MTA5MjIyMjAsImV4cCI6MTcxMTUyNzAyMH0.nL3yUPhGvnN3U4BMQHd7nme-f_nou-6Bnl_w_hOp8j8';
  final homeRepository = HomeRepository(dio);
  final homeHistory = await homeRepository.getHomeData();
  if (homeHistory.success == true) {
    return homeHistory.data;
  }
});
