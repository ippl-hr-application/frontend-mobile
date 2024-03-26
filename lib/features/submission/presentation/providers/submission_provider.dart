import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/submission/data/submission_repository.dart';

final submissionProvider = FutureProvider((ref) async {
  // final token = await ref.watch(jwtProvider.future);
  final dio = Dio();

  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImFoai1hZGJhZHV5MyIsImNvbXBhbnlfYnJhbmNoX2lkIjoxLCJpYXQiOjE3MTExOTcwNTgsImV4cCI6MTcxMTgwMTg1OH0.Xc1B13g134tdCUB_3M9cexwjf2SB0n6GMiT_sBFQbuM';
  final submissionRepository = SubmissionRepository(dio);
  final submissionHistory = await submissionRepository.getSubmissionHistory();
  if (submissionHistory.success == true) {
    return submissionHistory.data;
  }
});
