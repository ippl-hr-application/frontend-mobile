import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/submission/data/submission_repository.dart';

final submissionProvider = FutureProvider((ref) async {
  // final token = await ref.watch(jwtProvider.future);
  final dio = Dio();

  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6IjA0MWQ3ZjVhLTI4NmQtNGMzOS1hNjgyLWY4NmI5MDZmNzgyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNDg5MzFjNmQtNDUxZS00MTgzLWE5ZmYtMzBiMzY4NmE3ZjMyIiwiaWF0IjoxNzE0NDU5MTAzLCJleHAiOjE3MTUwNjM5MDN9.96CtgIUi3MVwDnxSgA90J4TdTrxu4mEHx8rJg8TPKno';
  final submissionRepository = SubmissionRepository(dio);
  final submissionHistory = await submissionRepository.getSubmissionHistory();
  if (submissionHistory.success == true) {
    return submissionHistory.data;
  }
});
