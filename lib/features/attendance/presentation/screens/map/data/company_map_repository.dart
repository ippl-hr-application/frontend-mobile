import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/presentation/screens/map/domain/company_map.dart';
import 'package:meraih_mobile/features/authentication/forgetpassword/provider/forgetpassword_provider.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:retrofit/retrofit.dart';

part 'company_map_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class CompanyMapRepository {
  factory CompanyMapRepository(Dio dio, {String? baseUrl}) = _CompanyMapRepository;

  @GET('/company/branch/{company_branch_id}')
  Future<CompanyMap> getCompanyBranch(
    @Path("company_branch_id") String companyBranchId,
  );
}

final companyMapRepositoryProvider = Provider<CompanyMapRepository>((ref) {
  final dio = ref.read(dioProvider);

  // Add an interceptor to log the request and response
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      print('Request: ${options.method} ${options.path}');
      print('Headers: ${options.headers}');
      print('Request Body: ${options.data}');
      return handler.next(options);
    },
    onResponse: (response, handler) {
      print('Response: ${response.statusCode} ${response.statusMessage}');
      print('Response Data: ${response.data}');
      return handler.next(response);
    },
    onError: (DioError e, handler) {
      print('Error: ${e.message}');
      if (e.response != null) {
        print('Error Response: ${e.response?.statusCode} ${e.response?.statusMessage}');
        print('Error Response Data: ${e.response?.data}');
      }
      return handler.next(e);
    },
  ));

  final token = ref.watch(authTokenProvider);
  dio.options.headers["Authorization"] = "Bearer $token";
  return CompanyMapRepository(dio);
});

final companyBranchProvider = FutureProvider.family<CompanyMap, String>((ref, companyBranchId) async {
  final repository = ref.read(companyMapRepositoryProvider);
  return repository.getCompanyBranch(companyBranchId);
});

final companyBranchIdProvider = FutureProvider<String>((ref) async {
  final token = ref.read(authTokenProvider);
  final companyBranchId = decodeCompanyBranchIdFromToken(token!);
  return companyBranchId;
});

String decodeCompanyBranchIdFromToken(String token) {
  final payload = token.split('.')[1];
  final decoded = utf8.decode(base64.decode(base64.normalize(payload)));
  final Map<String, dynamic> json = jsonDecode(decoded);
  
  // Print the decoded payload for debugging purposes
  print('Decoded Payload: $json');
  
  final companyBranchId = json['company_branch_id'];
  // Print the company_branch_id for debugging purposes
  print('company_branch_id: $companyBranchId');
  
  return companyBranchId;
}
