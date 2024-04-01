// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'izin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IzinRequestImpl _$$IzinRequestImplFromJson(Map<String, dynamic> json) =>
    _$IzinRequestImpl(
      to: json['to'] as String,
      from: json['from'] as String,
      permission_reason: json['permission_reason'] as String,
      file_name: json['file_name'] as String,
      file_size: json['file_size'] as int,
      file_type: json['file_type'] as String,
      file_url: json['file_url'] as String,
    );

Map<String, dynamic> _$$IzinRequestImplToJson(_$IzinRequestImpl instance) =>
    <String, dynamic>{
      'to': instance.to,
      'from': instance.from,
      'permission_reason': instance.permission_reason,
      'file_name': instance.file_name,
      'file_size': instance.file_size,
      'file_type': instance.file_type,
      'file_url': instance.file_url,
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
      from: json['from'] as String?,
      to: json['to'] as String?,
      permission_reason: json['permission_reason'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$IzinDataImplToJson(_$IzinDataImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'permission_reason': instance.permission_reason,
      'type': instance.type,
    };
