import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/homepage/domain/annoucment.dart';
import 'package:dio/dio.dart';

part 'annoucment_service.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class AnnouncmentRepository {
  factory AnnouncmentRepository(Dio dio, {String baseUrl}) =
      _AnnouncmentRepository;
  @GET('/announcement/')
  Future<AnnoucmentResponse> getAnnouncment();
}
