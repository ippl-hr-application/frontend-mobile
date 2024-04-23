// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResignRequestImpl _$$ResignRequestImplFromJson(Map<String, dynamic> json) =>
    _$ResignRequestImpl(
      reason: json['reason'] as String,
      resign_file:
          const FileConverter().fromJson(json['resign_file'] as String),
    );

Map<String, dynamic> _$$ResignRequestImplToJson(_$ResignRequestImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'resign_file': const FileConverter().toJson(instance.resign_file),
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
      reason: json['reason'] as String?,
      employee_id: json['employee_id'] as String?,
    );

Map<String, dynamic> _$$ResignDataImplToJson(_$ResignDataImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'employee_id': instance.employee_id,
    };
