import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/workassignments/domain/detail_tasks.dart';

part 'detail_tasks_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class DetailTasksRepository {
  factory DetailTasksRepository(Dio dio, {String baseUrl}) =
      _DetailTasksRepository;
  @GET('/task-management/{id}')
  Future<DetailTasksHistory> getDetailTasks(@Path('id') int id);
}
