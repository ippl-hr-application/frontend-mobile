// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseImpl _$$HomeResponseImplFromJson(Map<String, dynamic> json) =>
    _$HomeResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HomeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeResponseImplToJson(_$HomeResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$HomeDataImpl _$$HomeDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeDataImpl(
      companyName: json['company_name'] as String?,
      employeeName: json['employee_name'] as String?,
      date: json['date'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      shiftId: json['shift_id'] as int?,
      shiftName: json['shift_name'] as String?,
      jobPosition: json['job_position'] as String?,
    );

Map<String, dynamic> _$$HomeDataImplToJson(_$HomeDataImpl instance) =>
    <String, dynamic>{
      'company_name': instance.companyName,
      'employee_name': instance.employeeName,
      'date': instance.date,
      'from': instance.from,
      'to': instance.to,
      'shift_id': instance.shiftId,
      'shift_name': instance.shiftName,
      'job_position': instance.jobPosition,
    };
