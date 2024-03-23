import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/pengajuan/resign/domain/resign.dart';
import 'package:dio/dio.dart';
part 'resign_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ResignRepository {
  factory ResignRepository(Dio dio, {String baseUrl}) = _ResignRepository;
  @POST('/submission/resign')
  Future<ResignResponse> resign(
      @Header(
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImE3OTQ0MjFiLTYwMzctNGY5MS1iNTY3LTFjZTZhYTlhNjVlMCIsImNvbXBhbnlfYnJhbmNoX2lkIjo1LCJpYXQiOjE3MTExNzcwNzYsImV4cCI6MTcxMTc4MTg3Nn0.estJ0dXQuiKWNKmE2ogCrpI0wE-A8GuBnsczYaSnA0c')
      String token);
}
