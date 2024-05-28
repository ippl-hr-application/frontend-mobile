// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks.freezed.dart';
part 'tasks.g.dart';

@freezed
class TasksHistory with _$TasksHistory {
  factory TasksHistory({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Tasks? data,
  }) = _TasksHistory;

  factory TasksHistory.fromJson(Map<String, dynamic> json) =>
      _$TasksHistoryFromJson(json);
}

@freezed
class Tasks with _$Tasks {
  factory Tasks({
    @JsonKey(name: "tasks") List<TasksData>? tasks,
  }) = _Tasks;

  factory Tasks.fromJson(Map<String, dynamic> json) => _$TasksFromJson(json);
}

@freezed
class TasksData with _$TasksData {
  factory TasksData({
    @JsonKey(name: 'task_id') int? taskId,
    @JsonKey(name: 'company_branch_id') String? companybranchid,
    @JsonKey(name: 'employee_id') String? employeeid,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'start_date') String? startdate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'given_by') GivenData? givenbyId,
  }) = _TasksData;

  factory TasksData.fromJson(Map<String, dynamic> json) =>
      _$TasksDataFromJson(json);
}

@freezed
class GivenData with _$GivenData {
  factory GivenData({
    @JsonKey(name: 'employee_id') String? employee_id,
    @JsonKey(name: 'first_name') String? first_name,
    @JsonKey(name: 'last_name') String? last_name,
    @JsonKey(name: 'job_position') JobPosition? job_position,
  }) = _GivenData;
  factory GivenData.fromJson(Map<String, dynamic> json) =>
      _$GivenDataFromJson(json);
}

@freezed
class JobPosition with _$JobPosition {
  factory JobPosition({
    @JsonKey(name: 'name') String? name,
  }) = _JobPosition;

  factory JobPosition.fromJson(Map<String, dynamic> json) =>
      _$JobPositionFromJson(json);
}
