import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/submission/data/company_branch_repository.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final companyBranchProvider = FutureProvider((ref) async {
  final dio = Dio();

  final token = ref.watch(authTokenProvider);

  dio.options.headers['Authorization'] = 'Bearer $token';
  final companyBranchRepository = CompanyBranchRepository(dio);

  try {
    final companyBranchHistory =
        await companyBranchRepository.getCompanyBranch();

    if (companyBranchHistory.success == true) {
      return companyBranchHistory.data;
    }
  } on DioException {
    rethrow;
  }
});
