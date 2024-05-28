import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:meraih_mobile/features/submission/domain/mutasi.dart';
import 'package:meraih_mobile/configs/app_configs.dart';

part 'mutasi_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class MutasiRepository {
  factory MutasiRepository(Dio dio, {String baseUrl}) = _MutasiRepository;
  @POST('/submission/mutation')
  @MultiPart()
  Future<MutasiResponse> postMutasi(
      @Part(name: 'mutation_reason') String mutationReason,
      @Part(name: 'current_company_branch_id') String currentCompanyBranchId,
      @Part(name: 'target_company_branch_id') String targetCompanyBranchId,
      @Part(name: 'mutation_file') File mutationFile);
}
