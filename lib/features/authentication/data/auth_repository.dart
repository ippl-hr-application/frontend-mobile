import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/authentication/domain/auth.dart';
import 'package:dio/dio.dart';
part 'auth_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class AuthRepository {
  factory AuthRepository(Dio dio, {String baseUrl}) = _AuthRepository;
  @POST('/auth/login')
  Future<LoginResponse> login(@Body() LoginRequest data);
}
