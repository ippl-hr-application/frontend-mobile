// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CutiRequestImpl _$$CutiRequestImplFromJson(Map<String, dynamic> json) =>
    _$CutiRequestImpl(
      to: json['to'] as String,
      from: json['from'] as String,
      leaveReason: json['leave_reason'] as String,
      leaveType: json['leave_type'] as String,
      leave_file: const FileConverter().fromJson(json['leave_file'] as String),
    );

Map<String, dynamic> _$$CutiRequestImplToJson(_$CutiRequestImpl instance) =>
    <String, dynamic>{
      'to': instance.to,
      'from': instance.from,
      'leave_reason': instance.leaveReason,
      'leave_type': instance.leaveType,
      'leave_file': const FileConverter().toJson(instance.leave_file),
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
      leaveReason: json['leave_reason'] as String?,
      leaveType: json['leave_type'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$$CutiDataImplToJson(_$CutiDataImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'leave_reason': instance.leaveReason,
      'leave_type': instance.leaveType,
      'to': instance.to,
    };
