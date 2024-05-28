import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/submission/domain/company_branch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_branch_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class CompanyBranchRepository {
  factory CompanyBranchRepository(Dio dio, {String baseUrl}) =
      _CompanyBranchRepository;
  @GET('/company/branch/all')
  Future<CompanyBranchId> getCompanyBranch();
}
