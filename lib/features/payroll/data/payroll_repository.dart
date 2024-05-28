import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/payroll/domain/payroll_domain.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/payroll/domain/payroll_domain.dart';

part 'payroll_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class PayrollRepository {
  factory PayrollRepository(Dio dio, {String baseUrl}) = _PayrollRepository;
  @GET('/payroll/{companyId}/employee')
  Future<PayroleHistory> getPayrollHistory(
    @Path() String companyId,
    @Query('year') String year,
  );
}
