import 'dart:io';

import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/submission/domain/cuti.dart';
import 'package:dio/dio.dart';
part 'cuti_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class CutiRepository {
  factory CutiRepository(Dio dio, {String baseUrl}) = _CutiRepository;
  @POST('/submission/leave')
  Future<CutiResponse> postCuti(@Body() CutiRequest data);
}
