// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  factory ProfileResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ProfileDataContainer? data}) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
class ProfileDataContainer with _$ProfileDataContainer {
  factory ProfileDataContainer({@JsonKey(name: 'user') ProfileData? user}) =
      _ProfileDataContainer;

  factory ProfileDataContainer.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataContainerFromJson(json);
}

@freezed
class ProfileData with _$ProfileData {
  factory ProfileData(
      {@JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'employment_status_id') int? employmentStatusId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'marital_status') String? maritalStatus,
      @JsonKey(name: 'blood_type') String? bloodType,
      @JsonKey(name: 'religion') String? religion,
      @JsonKey(name: 'identity_type') String? identityType,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'identity_expired_date') String? identityExpiredDate,
      @JsonKey(name: 'join_date') String? join_date,
      @JsonKey(name: 'postcal_code') String? postcalCode,
      @JsonKey(name: 'citizen_id_address') String? citizenIdAddress,
      @JsonKey(name: 'residential_address') String? residentialAddress,
      @JsonKey(name: 'bank_account_number') String? bankAccountNumber,
      @JsonKey(name: 'bank_type') String? bankType,
      @JsonKey(name: 'wage') int? wage,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'hasResigned') bool? hasResigned,
      @JsonKey(name: 'employment_status') StatusData? employmentStatus,
      @JsonKey(name: 'job_position') PositionData? jobPosition}) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}

@freezed
class PositionData with _$PositionData {
  factory PositionData(
      {@JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name}) = _PositionData;

  factory PositionData.fromJson(Map<String, dynamic> json) =>
      _$PositionDataFromJson(json);
}

@freezed
class StatusData with _$StatusData {
  factory StatusData(
      {@JsonKey(name: 'employment_status_id') int? employmentStatusId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name}) = _StatusData;

  factory StatusData.fromJson(Map<String, dynamic> json) =>
      _$StatusDataFromJson(json);
}
