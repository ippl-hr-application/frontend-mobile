// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgetpassword.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgetRequestImpl _$$ForgetRequestImplFromJson(Map<String, dynamic> json) =>
    _$ForgetRequestImpl(
      employeeId: json['employee_id'] as String,
    );

Map<String, dynamic> _$$ForgetRequestImplToJson(_$ForgetRequestImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
    };

_$ForgetResponseImpl _$$ForgetResponseImplFromJson(Map<String, dynamic> json) =>
    _$ForgetResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ForgetData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForgetResponseImplToJson(
        _$ForgetResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ForgetDataImpl _$$ForgetDataImplFromJson(Map<String, dynamic> json) =>
    _$ForgetDataImpl(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$ForgetDataImplToJson(_$ForgetDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
