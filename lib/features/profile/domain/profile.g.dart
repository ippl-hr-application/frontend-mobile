// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      employeeId: json['employee_id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      residentialAddress: json['residential_address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      jobPosition: json['job_position'] == null
          ? null
          : PositionData.fromJson(json['job_position'] as Map<String, dynamic>),
      employmentStatus: json['employment_status'] == null
          ? null
          : StatusData.fromJson(
              json['employment_status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'residential_address': instance.residentialAddress,
      'phone_number': instance.phoneNumber,
      'job_position': instance.jobPosition,
      'employment_status': instance.employmentStatus,
    };

_$PositionDataImpl _$$PositionDataImplFromJson(Map<String, dynamic> json) =>
    _$PositionDataImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PositionDataImplToJson(_$PositionDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$StatusDataImpl _$$StatusDataImplFromJson(Map<String, dynamic> json) =>
    _$StatusDataImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$StatusDataImplToJson(_$StatusDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
