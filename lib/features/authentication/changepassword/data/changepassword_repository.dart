import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/authentication/changepassword/domain/changepassword.dart';
import 'package:dio/dio.dart';

part 'changepassword_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ChangepasswordRepository {
  factory ChangepasswordRepository(Dio dio, {String baseUrl}) = _ChangepasswordRepository;

  @PUT('/auth/change-password-employee')
  Future<ChangepasswordResponse> changePassword(@Body() ChangepasswordRequest data);
}
