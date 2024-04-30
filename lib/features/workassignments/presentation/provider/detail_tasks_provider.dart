import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/workassignments/data/detail_tasks_repository.dart';

Future<dynamic> handleGetDetail(id) async {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6IjA0MWQ3ZjVhLTI4NmQtNGMzOS1hNjgyLWY4NmI5MDZmNzgyYyIsImNvbXBhbnlfYnJhbmNoX2lkIjoiNDg5MzFjNmQtNDUxZS00MTgzLWE5ZmYtMzBiMzY4NmE3ZjMyIiwiaWF0IjoxNzE0NDU5MTAzLCJleHAiOjE3MTUwNjM5MDN9.96CtgIUi3MVwDnxSgA90J4TdTrxu4mEHx8rJg8TPKno';
  final detailTasksRepository = DetailTasksRepository(dio);
  try {
    await detailTasksRepository.getDetailTasks(id);
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response);
    }
  }
}
