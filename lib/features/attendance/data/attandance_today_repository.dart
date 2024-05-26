import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/domain/attandance_today.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'attandance_today_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class AttandanceTodayRepository {
  factory AttandanceTodayRepository(Dio dio, {String baseUrl}) =
      _AttandanceTodayRepository;
  @GET('/attendance/today')
  Future<AttandanceToday> getAttandanceToday();
}
