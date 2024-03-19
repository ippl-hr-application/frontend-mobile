import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/submission_repository.dart';

final submissionProvider = FutureProvider((ref) async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImFoai1hZGJhZHV5MyIsImNvbXBhbnlfYnJhbmNoX2lkIjoxLCJpYXQiOjE3MTA4NTI5MjgsImV4cCI6MTcxMTQ1NzcyOH0.5zlFZsHEBPmGSCbTw4Q2MPHbXBnJwmMEZwtUDevsrfs';
  final submissionRepository = SubmissionRepository(dio);
  final submissionHistory = await submissionRepository.getSubmissionHistory();
  if (submissionHistory.success == true) {
    return submissionHistory.data;
  }
});
