// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CutiRequestImpl _$$CutiRequestImplFromJson(Map<String, dynamic> json) =>
    _$CutiRequestImpl(
      to: json['to'] as String,
      from: json['from'] as String,
      leave_reason: json['leave_reason'] as String,
      leave_type: json['leave_type'] as String,
      file_name: json['file_name'] as String,
      file_size: json['file_size'] as int,
      file_type: json['file_type'] as String,
      file_url: json['file_url'] as String,
    );

Map<String, dynamic> _$$CutiRequestImplToJson(_$CutiRequestImpl instance) =>
    <String, dynamic>{
      'to': instance.to,
      'from': instance.from,
      'leave_reason': instance.leave_reason,
      'leave_type': instance.leave_type,
      'file_name': instance.file_name,
      'file_size': instance.file_size,
      'file_type': instance.file_type,
      'file_url': instance.file_url,
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
      from: json['from'] as String?,
      to: json['to'] as String?,
      leave_reason: json['leave_reason'] as String?,
      leave_type: json['leave_type'] as String?,
    );

Map<String, dynamic> _$$CutiDataImplToJson(_$CutiDataImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'leave_reason': instance.leave_reason,
      'leave_type': instance.leave_type,
    };
