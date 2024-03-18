import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/application/auth_service.dart';
import 'package:meraih_mobile/features/authentication/domain/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() {}
  Future<void> handleLogin(
      {required String companyId,
      required String employeeId,
      required String password}) async {
    final authService = ref.watch(authServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => authService.login(LoginRequest(
        companyId: companyId, employeId: employeeId, password: password)));
  }
}
