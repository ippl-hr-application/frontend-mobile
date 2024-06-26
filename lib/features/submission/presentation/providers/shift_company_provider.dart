import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/shift_company_repository.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';

final shiftCompanyProvider = FutureProvider((ref) async {
  final dio = Dio();

  final token = ref.watch(authTokenProvider);
  final home = ref.watch(homeProvider);

  final companyId = home.value!.companyBranchId.toString();
  dio.options.headers['Authorization'] = 'Bearer $token';

  final shiftCompanyRepository = ShiftCompanyRepository(dio);
  try {
    final shiftCompanyHistory =
        await shiftCompanyRepository.getShiftCompany(companyId);
    if (shiftCompanyHistory.success == true) {
      return shiftCompanyHistory.data;
    }
  } on DioException {
    rethrow;
  }
});
