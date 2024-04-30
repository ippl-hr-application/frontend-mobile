// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailTasksHistoryImpl _$$DetailTasksHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTasksHistoryImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Tasks.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailTasksHistoryImplToJson(
        _$DetailTasksHistoryImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$TasksImpl _$$TasksImplFromJson(Map<String, dynamic> json) => _$TasksImpl(
      task: (json['task'] as List<dynamic>?)
          ?.map((e) => DetailTasksData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TasksImplToJson(_$TasksImpl instance) =>
    <String, dynamic>{
      'task': instance.task,
    };

_$DetailTasksDataImpl _$$DetailTasksDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTasksDataImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$$DetailTasksDataImplToJson(
        _$DetailTasksDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
