import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/shift_company_repository.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

final shiftCompanyProvider = FutureProvider((ref) async {
  final dio = Dio();

  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final shiftCompanyRepository = ShiftCompanyRepository(dio);
  final shiftCompanyHistory = await shiftCompanyRepository.getShiftCompany();
  if (shiftCompanyHistory.success == true) {
    return shiftCompanyHistory.data;
  }
});
