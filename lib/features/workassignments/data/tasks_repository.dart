import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/workassignments/domain/tasks.dart';

part 'tasks_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class TasksRepository {
  factory TasksRepository(Dio dio, {String baseUrl}) = _TasksRepository;
  @GET('/task-management')
  Future<TasksHistory> getTasksHistory();
}
