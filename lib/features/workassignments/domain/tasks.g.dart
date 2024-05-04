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
      givenbyId: json['given_by_id'] as String?,
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
      'given_by_id': instance.givenbyId,
    };
