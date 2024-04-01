import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/profile/data/profile_service.dart';

final profileProvider = FutureProvider((ref) async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImFoai1hZGJhZHV5MyIsImNvbXBhbnlfYnJhbmNoX2lkIjoxLCJpYXQiOjE3MTE5NTcyODEsImV4cCI6MTcxMjU2MjA4MX0.K7d4Rp3NA_Ochg9Lm4SNHMZXclf_v74m6o9CbSLHxdw';
  final profileRepository = ProfileRepository(dio);
  final profileHistory = await profileRepository.getProfile();
  if (profileHistory.success == true) {
    return profileHistory.data;
  }
});
