import 'package:meraih_mobile/features/authentication/domain/forget_password.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:dio/dio.dart';

part 'forgetpassword_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ForgetpasswordRepository {
  factory ForgetpasswordRepository(Dio dio, {String baseUrl}) =
      _ForgetpasswordRepository;

  @POST('/auth/employee-forgot-password')
  Future<ForgetpasswordResponse> forgetpassword(
      @Body() ForgetpasswordRequest data);
}
