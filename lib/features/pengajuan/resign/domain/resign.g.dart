// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResignRequestImpl _$$ResignRequestImplFromJson(Map<String, dynamic> json) =>
    _$ResignRequestImpl(
      permission_reason: json['permission_reason'] as String,
      permission_file: json['permission_file'] as String?,
    );

Map<String, dynamic> _$$ResignRequestImplToJson(_$ResignRequestImpl instance) =>
    <String, dynamic>{
      'permission_reason': instance.permission_reason,
      'permission_file': instance.permission_file,
    };

_$ResignResponseImpl _$$ResignResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResignResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ResignData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResignResponseImplToJson(
        _$ResignResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ResignDataImpl _$$ResignDataImplFromJson(Map<String, dynamic> json) =>
    _$ResignDataImpl(
      permission_submission_id: json['permission_submission_id'] as int?,
      submision_id: json['submision_id'] as int?,
      employee_file_id: json['employee_file_id'] as int?,
      permission_reason: json['permission_reason'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ResignDataImplToJson(_$ResignDataImpl instance) =>
    <String, dynamic>{
      'permission_submission_id': instance.permission_submission_id,
      'submision_id': instance.submision_id,
      'employee_file_id': instance.employee_file_id,
      'permission_reason': instance.permission_reason,
      'type': instance.type,
    };
