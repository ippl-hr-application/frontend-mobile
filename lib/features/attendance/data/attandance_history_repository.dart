import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/domain/attandance_history.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'attandance_history_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class AttandanceHistoryRepository {
  factory AttandanceHistoryRepository(Dio dio, {String baseUrl}) =
      _AttandanceHistoryRepository;
  @GET('attendance/history')
  Future<AttandanceHistoryDate> getAttandanceHistory();
}
