import 'dart:ffi';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/submission/domain/sakit.dart';
import 'package:dio/dio.dart';

part 'sakit_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class SakitRepository {
  factory SakitRepository(Dio dio, {String baseUrl}) = _SakitRepository;
  @POST('/submission/sick')
  @MultiPart()
  Future<SakitResponse> postSakit(
      @Part(name: 'from') String from,
      @Part(name: 'permission_reason') String permissionReason,
      @Part(name: 'to') String to,
      @Part(name: 'sick_file') File sickFile);
}
