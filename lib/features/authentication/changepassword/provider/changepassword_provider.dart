import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/changepassword/data/changepassword_repository.dart';
import 'package:meraih_mobile/features/authentication/changepassword/domain/changepassword.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';


Future<ChangepasswordResponse> handleChangePassword(
  FutureProviderRef ref,
  ChangepasswordRequest changePasswordRequest,
) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.contentType = "application/json";
  dio.options.headers["Authorization"] = "Bearer $token";
  final changePasswordRepository = ChangepasswordRepository(dio);

  try {
    final changePasswordResponse = await changePasswordRepository.changePassword(changePasswordRequest);

    if (changePasswordResponse.success == true) {
      return changePasswordResponse;
    } else {
      throw Exception(changePasswordResponse.message ?? "Failed to change password");
    }
  } on DioException catch (e) {
    print(e.toString());
    if (e.response != null) {
      print(e.response?.data);
    }
    rethrow;
  }
}

final handleChangePasswordProvider = FutureProvider.family<ChangepasswordResponse, ChangepasswordRequest>(
  (ref, request) async {
    return handleChangePassword(ref, request);
  },
);
