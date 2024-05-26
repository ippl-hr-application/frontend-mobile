import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/submission/domain/change_shift.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_shift_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ShiftRepository {
  factory ShiftRepository(Dio dio, {String baseUrl}) = _ShiftRepository;
  @POST('/submission/change-shift')
  Future<ChangeShiftResponse> postChangeShift(
      @Body() ChangeShiftRequest changeShiftRequest);
}
