import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/authentication/domain/forgetpassword.dart';
import 'package:dio/dio.dart';
part 'forget_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ForgetRepository {
  factory ForgetRepository(Dio dio, {String baseUrl}) = _ForgetRepository;
  @POST('/auth/employee-forget/')
  Future<ForgetResponse> forget(@Body() ForgetRequest data);
}
