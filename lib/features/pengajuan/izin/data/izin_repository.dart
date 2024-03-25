import 'dart:io';

import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/pengajuan/izin/domain/izin.dart';
import 'package:dio/dio.dart';
part 'izin_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class IzinRepository {
  factory IzinRepository(Dio dio, {String baseUrl}) = _IzinRepository;
  @POST('/submission/permission')
  @MultiPart()
  Future<IzinResponse> postIzin(
    @Part(name: 'from') String from,
    @Part(name: 'permission_reason') String permissionReason,
    @Part(name: 'permission_file') File permissionFile,
    @Part(name: 'to') String to,
  );
}
