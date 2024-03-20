import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/homepage/domain/profile.dart';
import 'package:dio/dio.dart';
part 'profile_service.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class HomeRepository {
  factory HomeRepository(Dio dio, {String baseUrl}) = _HomeRepository;
  @GET('/attendance')
  Future<HomeResponse> getHomeData();
}
