import 'dart:io';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/domain/attandance_submission.dart';
import 'package:dio/dio.dart';

part 'attandance_submission_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class AttandanceHistoryRepository {
  factory AttandanceHistoryRepository(Dio dio, {String baseUrl}) =
      _AttandanceHistoryRepository;
  @POST('/submission')
  @MultiPart()
  Future<AttandanceHistoryData> postAttandanceHistory(
      @Part(name: 'attendance_id') String attendanceId,
      @Part(name: 'reason') String reason,
      @Part(name: ' attendance_submission_file') File attendanceSubmissionFile);
}
