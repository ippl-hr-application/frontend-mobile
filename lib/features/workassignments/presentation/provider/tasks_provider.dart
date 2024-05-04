import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/workassignments/data/tasks_repository.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

final tasksProvider = FutureProvider((ref) async {
  final dio = Dio();
  final token = ref.watch(authTokenProvider);
  dio.options.headers['Authorization'] = 'Bearer $token';

  final tasksRepository = TasksRepository(dio);
  final tasksHistory = await tasksRepository.getTasksHistory();

  if (tasksHistory.success == true) {
    return tasksHistory.data;
  }
});
