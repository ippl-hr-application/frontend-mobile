// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meraih_mobile/features/workassignments/domain/tasks.dart';

part 'detail_tasks.freezed.dart';
part 'detail_tasks.g.dart';

@freezed
class DetailTasksHistory with _$DetailTasksHistory {
  factory DetailTasksHistory({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Tasks? data,
  }) = _DetailTasksHistory;

  factory DetailTasksHistory.fromJson(Map<String, dynamic> json) =>
      _$DetailTasksHistoryFromJson(json);
}

@freezed
class Tasks with _$Tasks {
  factory Tasks({
    @JsonKey(name: "task") List<DetailTasksData>? task,
  }) = _Tasks;

  factory Tasks.fromJson(Map<String, dynamic> json) => _$TasksFromJson(json);
}

@freezed
class DetailTasksData with _$DetailTasksData {
  factory DetailTasksData(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate}) = _DetailTasksData;

  factory DetailTasksData.fromJson(Map<String, dynamic> json) =>
      _$DetailTasksDataFromJson(json);
}
