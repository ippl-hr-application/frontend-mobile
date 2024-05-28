import 'dart:ffi';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meraih_mobile/features/attendance/domain/request_attandance.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/data/request_attandance_repository.dart';
import 'package:dio/dio.dart';

part 'request_attandance_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class RequestAttandanceRepository {
  @POST('/submission/attendance')
  @MultiPart()
  Future<RequestAttandance> postRequestAttandance(
      @Part(name: 'attendance_id') int attendance_id,
      @Part(name: 'reason') String reason,
      @Part(name: 'attendance_submission_file')
      File attendance_submission_file);
}
