import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/features/submission/domain/shift_company.dart';

part 'shift_company_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ShiftCompanyRepository {
  factory ShiftCompanyRepository(Dio dio, {String baseUrl}) =
      _ShiftCompanyRepository;
  @GET('/shift')
  Future<ShiftCompanyResponse> getShiftCompany();
}
