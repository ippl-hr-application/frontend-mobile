import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/submission/domain/submission.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'submission_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class SubmissionRepository {
  factory SubmissionRepository(Dio dio, {String baseUrl}) =
      _SubmissionRepository;
  @GET('/submission')
  Future<SubmissionHistory> getSubmissionHistory(
    @Query('year') String year,
    @Query('month') String month,
    @Query('status') String status,
  );
}
