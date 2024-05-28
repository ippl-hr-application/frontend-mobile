// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_attandance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestAttandanceImpl _$$RequestAttandanceImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestAttandanceImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RequestData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RequestAttandanceImplToJson(
        _$RequestAttandanceImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$RequestDataImpl _$$RequestDataImplFromJson(Map<String, dynamic> json) =>
    _$RequestDataImpl(
      reason: json['reason'] as String?,
      employee_id: json['employee_id'] as String?,
    );

Map<String, dynamic> _$$RequestDataImplToJson(_$RequestDataImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'employee_id': instance.employee_id,
    };
