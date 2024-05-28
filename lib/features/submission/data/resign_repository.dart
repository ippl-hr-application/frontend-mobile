import 'dart:io';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/submission/domain/resign.dart';
import 'package:dio/dio.dart';
part 'resign_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ResignRepository {
  factory ResignRepository(Dio dio, {String baseUrl}) = _ResignRepository;
  @POST('/submission/resign')
  @MultiPart()
  Future<ResignResponse> postResign(
    @Part(name: 'reason') String reason,
    @Part(name: 'resign_file') File resign_file,
  );
}
