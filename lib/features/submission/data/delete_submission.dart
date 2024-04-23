import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:meraih_mobile/configs/app_configs.dart';

part 'delete_submission.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class DeleteSubmission {
  factory DeleteSubmission(Dio dio, {String baseUrl}) = _DeleteSubmission;
  @DELETE('/submission/{id}')
  Future<void> deleteSubmission(@Path() int id);
}
