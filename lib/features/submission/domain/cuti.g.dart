// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CutiRequestImpl _$$CutiRequestImplFromJson(Map<String, dynamic> json) =>
    _$CutiRequestImpl(
      from: json['from'] as String,
      leave_reason: json['leave_reason'] as String,
      leave_type: json['leave_type'] as String,
      leave_file: const FileConverter().fromJson(json['leave_file'] as String),
      to: json['to'] as String,
    );

Map<String, dynamic> _$$CutiRequestImplToJson(_$CutiRequestImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'leave_reason': instance.leave_reason,
      'leave_type': instance.leave_type,
      'leave_file': const FileConverter().toJson(instance.leave_file),
      'to': instance.to,
    };

_$CutiResponseImpl _$$CutiResponseImplFromJson(Map<String, dynamic> json) =>
    _$CutiResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CutiData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CutiResponseImplToJson(_$CutiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$CutiDataImpl _$$CutiDataImplFromJson(Map<String, dynamic> json) =>
    _$CutiDataImpl(
      leave_submission_id: json['leave_submission_id'] as int?,
      submision_id: json['submision_id'] as int?,
      employee_file_id: json['employee_file_id'] as int?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      leave_reason: json['leave_reason'] as String?,
      leave_type: json['leave_type'] as String?,
    );

Map<String, dynamic> _$$CutiDataImplToJson(_$CutiDataImpl instance) =>
    <String, dynamic>{
      'leave_submission_id': instance.leave_submission_id,
      'submision_id': instance.submision_id,
      'employee_file_id': instance.employee_file_id,
      'from': instance.from,
      'to': instance.to,
      'leave_reason': instance.leave_reason,
      'leave_type': instance.leave_type,
    };
