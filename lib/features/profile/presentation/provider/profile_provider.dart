import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/profile/data/profile_service.dart';

final profileProvider = FutureProvider((ref) async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6IjA0MWQ3ZjVhLTI4NmQtNGMzOS1hNjgyLWY4NmI5MDZmNzgyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNDg5MzFjNmQtNDUxZS00MTgzLWE5ZmYtMzBiMzY4NmE3ZjMyIiwiaWF0IjoxNzE0NDU5MTAzLCJleHAiOjE3MTUwNjM5MDN9.96CtgIUi3MVwDnxSgA90J4TdTrxu4mEHx8rJg8TPKno';
  final profileRepository = ProfileRepository(dio);
  final profileHistory = await profileRepository.getProfile();
  if (profileHistory.success == true) {
    return profileHistory.data;
  }
});
