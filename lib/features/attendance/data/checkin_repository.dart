import 'dart:io';

import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/domain/checkin.dart';
import 'package:dio/dio.dart';

part 'checkin_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class CheckinRepository {
  factory CheckinRepository(Dio dio, {String baseUrl}) = _CheckinRepository;
  @POST('/attendance/check-in')
  @MultiPart()
  Future<CheckinResponse> postCheckin(
    @Part(name: 'assign_shift_id') String assign_shift_id,
    @Part(name: 'attendance_file') File attendance_file,
  );
}