// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasksHistoryImpl _$$TasksHistoryImplFromJson(Map<String, dynamic> json) =>
    _$TasksHistoryImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Tasks.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TasksHistoryImplToJson(_$TasksHistoryImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$TasksImpl _$$TasksImplFromJson(Map<String, dynamic> json) => _$TasksImpl(
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => TasksData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TasksImplToJson(_$TasksImpl instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };

_$TasksDataImpl _$$TasksDataImplFromJson(Map<String, dynamic> json) =>
    _$TasksDataImpl(
      taskId: (json['task_id'] as num?)?.toInt(),
      companybranchid: json['company_branch_id'] as String?,
      employeeid: json['employee_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      startdate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      givenbyId: json['given_by'] == null
          ? null
          : GivenData.fromJson(json['given_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TasksDataImplToJson(_$TasksDataImpl instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'company_branch_id': instance.companybranchid,
      'employee_id': instance.employeeid,
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.startdate,
      'end_date': instance.endDate,
      'given_by': instance.givenbyId,
    };

_$GivenDataImpl _$$GivenDataImplFromJson(Map<String, dynamic> json) =>
    _$GivenDataImpl(
      employee_id: json['employee_id'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      job_position: json['job_position'] == null
          ? null
          : JobPosition.fromJson(json['job_position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GivenDataImplToJson(_$GivenDataImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employee_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'job_position': instance.job_position,
    };

_$JobPositionImpl _$$JobPositionImplFromJson(Map<String, dynamic> json) =>
    _$JobPositionImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$JobPositionImplToJson(_$JobPositionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
