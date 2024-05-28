import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/domain/forget_password.dart';
import 'package:meraih_mobile/features/authentication/data/forgetpassword_repository.dart';

// final dioProvider = Provider((ref) => Dio());

// final forgetpasswordRepositoryProvider =
//     Provider<ForgetpasswordRepository>((ref) {
//   final dio = Dio();
//   return ForgetpasswordRepository(dio);
// });

Future<dynamic> handleForgetPassword(
  WidgetRef ref,
  ForgetpasswordRequest forgetpasswordRequest,
) async {
  final dio = Dio();
  dio.options.contentType = "application/json";
  final forgetpasswordRepository = ForgetpasswordRepository(dio);

  try {
    final forgetpasswordResponse =
        await forgetpasswordRepository.forgetpassword(forgetpasswordRequest);

    if (forgetpasswordResponse.success == true) {
      print(forgetpasswordResponse.message);
      return forgetpasswordResponse;
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
