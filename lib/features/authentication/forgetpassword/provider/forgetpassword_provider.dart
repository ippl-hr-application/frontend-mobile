import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/forgetpassword/domain/forgetpassword.dart';
import 'package:meraih_mobile/features/authentication/forgetpassword/data/forgetpassword_repository.dart';

final dioProvider = Provider((ref) => Dio());

final forgetpasswordRepositoryProvider = Provider<ForgetpasswordRepository>((ref) {
  final dio = ref.read(dioProvider);
  return ForgetpasswordRepository(dio);
});

Future<ForgetpasswordResponse> handleForgetPassword(
  FutureProviderRef ref,
  ForgetpasswordRequest forgetpasswordRequest,
) async {
  final repository = ref.read(forgetpasswordRepositoryProvider);

  try {
    final forgetpasswordResponse = await repository.forgetpassword(forgetpasswordRequest);

    if (forgetpasswordResponse.success == true) {
      return forgetpasswordResponse;
    } else {
      throw Exception(forgetpasswordResponse.message ?? "Failed to reset password");
    }
  } on DioException catch (e) {
    print(e.toString());
    if (e.response != null) {
      print(e.response?.data);
      throw Exception(e.response?.data['message'] ?? 'Server error');
    }
    rethrow;
  }
}

final handleForgetPasswordProvider = FutureProvider.family<ForgetpasswordResponse, ForgetpasswordRequest>(
  (ref, request) async {
    return handleForgetPassword(ref, request);
  },
);
