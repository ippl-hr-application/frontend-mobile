import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/workassignments/data/tasks_repository.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';

final tasksProvider = FutureProvider((ref) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  final home = ref.watch(homeProvider);

  final companyId = home.value!.companyBranchId.toString();

  dio.options.headers['Authorization'] = 'Bearer $token';

  final tasksRepository = TasksRepository(dio);

  try {
    final tasksHistory = await tasksRepository.getTasksHistory(companyId);

    if (tasksHistory.success == true) {
      return tasksHistory.data;
    }
  } on DioException {
    rethrow;
  }
});
