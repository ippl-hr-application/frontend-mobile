import 'dart:io';

import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/pengajuan/cuti/domain/cuti.dart';
import 'package:dio/dio.dart';
part 'cuti_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class CutiRepository {
  factory CutiRepository(Dio dio, {String baseUrl}) = _CutiRepository;
  @POST('/submission/leave')
  @MultiPart()
  Future<CutiResponse> postCuti(
    @Part(name: 'from') String from,
    @Part(name: 'leave_reason') String leave_reason,
    @Part(name: 'leave_type') String leave_type,
    @Part(name: 'leave_file') File leave_file,
    @Part(name: 'to') String to,
  );
}
