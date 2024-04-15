// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sakit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SakitRequestImpl _$$SakitRequestImplFromJson(Map<String, dynamic> json) =>
    _$SakitRequestImpl(
      from: json['from'] as String,
      permissionReason: json['permission_reason'] as String,
      to: json['to'] as String,
      sickFile: const FileConverter().fromJson(json['sick_file'] as String),
    );

Map<String, dynamic> _$$SakitRequestImplToJson(_$SakitRequestImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'permission_reason': instance.permissionReason,
      'to': instance.to,
      'sick_file': const FileConverter().toJson(instance.sickFile),
    };

_$SakitResponseImpl _$$SakitResponseImplFromJson(Map<String, dynamic> json) =>
    _$SakitResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SakitData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SakitResponseImplToJson(_$SakitResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$SakitDataImpl _$$SakitDataImplFromJson(Map<String, dynamic> json) =>
    _$SakitDataImpl(
      from: json['from'] as String?,
      to: json['to'] as String?,
      permissionReason: json['permission_reason'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$SakitDataImplToJson(_$SakitDataImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'permission_reason': instance.permissionReason,
      'type': instance.type,
    };
