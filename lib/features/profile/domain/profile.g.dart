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
          : ProfileDataContainer.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ProfileDataContainerImpl _$$ProfileDataContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileDataContainerImpl(
      user: json['user'] == null
          ? null
          : ProfileData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileDataContainerImplToJson(
        _$ProfileDataContainerImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      employeeId: json['employee_id'] as String?,
      companyBranchId: json['company_branch_id'] as String?,
      jobPositionId: (json['job_position_id'] as num?)?.toInt(),
      employmentStatusId: (json['employment_status_id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      birthDate: json['birth_date'] as String?,
      maritalStatus: json['marital_status'] as String?,
      bloodType: json['blood_type'] as String?,
      religion: json['religion'] as String?,
      identityType: json['identity_type'] as String?,
      identityNumber: json['identity_number'] as String?,
      identityExpiredDate: json['identity_expired_date'] as String?,
      join_date: json['join_date'] as String?,
      postcalCode: json['postcal_code'] as String?,
      citizenIdAddress: json['citizen_id_address'] as String?,
      residentialAddress: json['residential_address'] as String?,
      bankAccountNumber: json['bank_account_number'] as String?,
      bankType: json['bank_type'] as String?,
      wage: (json['wage'] as num?)?.toInt(),
      password: json['password'] as String?,
      hasResigned: json['hasResigned'] as bool?,
      employmentStatus: json['employment_status'] == null
          ? null
          : StatusData.fromJson(
              json['employment_status'] as Map<String, dynamic>),
      jobPosition: json['job_position'] == null
          ? null
          : PositionData.fromJson(json['job_position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'company_branch_id': instance.companyBranchId,
      'job_position_id': instance.jobPositionId,
      'employment_status_id': instance.employmentStatusId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'place_of_birth': instance.placeOfBirth,
      'birth_date': instance.birthDate,
      'marital_status': instance.maritalStatus,
      'blood_type': instance.bloodType,
      'religion': instance.religion,
      'identity_type': instance.identityType,
      'identity_number': instance.identityNumber,
      'identity_expired_date': instance.identityExpiredDate,
      'join_date': instance.join_date,
      'postcal_code': instance.postcalCode,
      'citizen_id_address': instance.citizenIdAddress,
      'residential_address': instance.residentialAddress,
      'bank_account_number': instance.bankAccountNumber,
      'bank_type': instance.bankType,
      'wage': instance.wage,
      'password': instance.password,
      'hasResigned': instance.hasResigned,
      'employment_status': instance.employmentStatus,
      'job_position': instance.jobPosition,
    };

_$PositionDataImpl _$$PositionDataImplFromJson(Map<String, dynamic> json) =>
    _$PositionDataImpl(
      jobPositionId: (json['job_position_id'] as num?)?.toInt(),
      companyBranchId: json['company_branch_id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PositionDataImplToJson(_$PositionDataImpl instance) =>
    <String, dynamic>{
      'job_position_id': instance.jobPositionId,
      'company_branch_id': instance.companyBranchId,
      'name': instance.name,
    };

_$StatusDataImpl _$$StatusDataImplFromJson(Map<String, dynamic> json) =>
    _$StatusDataImpl(
      employmentStatusId: (json['employment_status_id'] as num?)?.toInt(),
      companyBranchId: json['company_branch_id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$StatusDataImplToJson(_$StatusDataImpl instance) =>
    <String, dynamic>{
      'employment_status_id': instance.employmentStatusId,
      'company_branch_id': instance.companyBranchId,
      'name': instance.name,
    };
