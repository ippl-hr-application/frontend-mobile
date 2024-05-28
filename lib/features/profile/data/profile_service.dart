import 'package:meraih_mobile/features/profile/domain/profile.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:dio/dio.dart';

part 'profile_service.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ProfileRepository {
  factory ProfileRepository(Dio dio, {String baseUrl}) = _ProfileRepository;
  @GET('/profile')
  Future<ProfileResponse> getProfile();
}
