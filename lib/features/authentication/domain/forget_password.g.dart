// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgetpasswordRequestImpl _$$ForgetpasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgetpasswordRequestImpl(
      employeeId: json['employee_id'] as String,
    );

Map<String, dynamic> _$$ForgetpasswordRequestImplToJson(
        _$ForgetpasswordRequestImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
    };

_$ForgetpasswordResponseImpl _$$ForgetpasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgetpasswordResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ForgetpasswordResponseImplToJson(
        _$ForgetpasswordResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
