import 'dart:ffi';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/domain/attandance_request.dart';
import 'package:dio/dio.dart';

part 'request_attandance_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class RequestAttandanceRepository {
  factory RequestAttandanceRepository(Dio dio, {String baseUrl}) =
      _RequestAttandanceRepository;
  @POST('/submission/attendance')
  @MultiPart()
  Future<AttandanceRequest> postRequestAttandance(
      @Part(name: 'attendance_id') int attendanceId,
      @Part(name: 'reason') String reason,
      @Part(name: 'attendance_submission_file')
      File attendance_submission_file);
}
