import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/payroll/data/payroll_repository.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';

final payrollProvider =
    FutureProvider.family<dynamic, Map<String, dynamic>>((ref, params) async {
  final dio = Dio();

  final token = ref.watch(authTokenProvider);
  final home = ref.watch(homeProvider);

  final companyId = home.value!.companyBranchId.toString();
  final year = params['year'];

  dio.options.headers['Authorization'] = 'Bearer $token';
  final payrollRepository = PayrollRepository(dio);

  try {
    final payrollHistory =
        await payrollRepository.getPayrollHistory(companyId, year);

    if (payrollHistory.success == true) {
      print(payrollHistory);
      return payrollHistory.data?.payrolls;
    }
  } on DioException {
    rethrow;
  }
});
