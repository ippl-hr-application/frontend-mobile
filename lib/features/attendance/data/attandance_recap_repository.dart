import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/domain/attandance_recap.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'attandance_recap_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class AttandanceRecapRepository {
  factory AttandanceRecapRepository(Dio dio, {String baseUrl}) =
      _AttandanceRecapRepository;

  @GET('attendance/recap')
  Future<AttandanceRecap> getAttandanceRecap(
    @Query('month') String month,
    @Query('year') String year,
  );
}
