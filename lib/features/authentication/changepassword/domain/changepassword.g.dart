// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changepassword.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangepasswordRequestImpl _$$ChangepasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangepasswordRequestImpl(
      old_password: json['old_password'] as String,
      password: json['password'] as String,
      confirm_password: json['confirm_password'] as String,
    );

Map<String, dynamic> _$$ChangepasswordRequestImplToJson(
        _$ChangepasswordRequestImpl instance) =>
    <String, dynamic>{
      'old_password': instance.old_password,
      'password': instance.password,
      'confirm_password': instance.confirm_password,
    };

_$ChangepasswordResponseImpl _$$ChangepasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangepasswordResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ChangepasswordData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChangepasswordResponseImplToJson(
        _$ChangepasswordResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ChangepasswordDataImpl _$$ChangepasswordDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangepasswordDataImpl(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$ChangepasswordDataImplToJson(
        _$ChangepasswordDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
