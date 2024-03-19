import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/pengajuan/izin/domain/izin.dart';
import 'package:dio/dio.dart';
part 'izin_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class IzinRepository {
  factory IzinRepository(Dio dio, {String baseUrl}) = _IzinRepository;
  @POST('/submission/permission')
  Future<IzinResponse> Izin(@Body() IzinRequest data);
}
