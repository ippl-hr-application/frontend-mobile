// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'izin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IzinRequestImpl _$$IzinRequestImplFromJson(Map<String, dynamic> json) =>
    _$IzinRequestImpl(
      from: json['from'] as String,
      permission_reason: json['permission_reason'] as String,
      permission_file:
          const FileConverter().fromJson(json['permission_file'] as String),
      to: json['to'] as String,
    );

Map<String, dynamic> _$$IzinRequestImplToJson(_$IzinRequestImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'permission_reason': instance.permission_reason,
      'permission_file': const FileConverter().toJson(instance.permission_file),
      'to': instance.to,
    };

_$IzinResponseImpl _$$IzinResponseImplFromJson(Map<String, dynamic> json) =>
    _$IzinResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : IzinData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IzinResponseImplToJson(_$IzinResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$IzinDataImpl _$$IzinDataImplFromJson(Map<String, dynamic> json) =>
    _$IzinDataImpl(
      permission_submission_id: json['permission_submission_id'] as int?,
      submision_id: json['submision_id'] as int?,
      employee_file_id: json['employee_file_id'] as int?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      permission_reason: json['permission_reason'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$IzinDataImplToJson(_$IzinDataImpl instance) =>
    <String, dynamic>{
      'permission_submission_id': instance.permission_submission_id,
      'submision_id': instance.submision_id,
      'employee_file_id': instance.employee_file_id,
      'from': instance.from,
      'to': instance.to,
      'permission_reason': instance.permission_reason,
      'type': instance.type,
    };
