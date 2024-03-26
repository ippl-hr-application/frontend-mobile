// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  factory ProfileResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ProfileData? data}) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
class ProfileData with _$ProfileData {
  factory ProfileData(
          {@JsonKey(name: 'employee_id') String? employeeId,
          @JsonKey(name: 'first_name') String? firstName,
          @JsonKey(name: 'last_name') String? lastName,
          @JsonKey(name: 'email') String? email,
          @JsonKey(name: 'residential_address') String? residentialAddress,
          @JsonKey(name: 'phone_number') String? phoneNumber,
          @JsonKey(name: 'job_position') PositionData? jobPosition,
          @JsonKey(name: 'employment_status') StatusData? employmentStatus}) =
      _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}

@freezed
class PositionData with _$PositionData {
  factory PositionData({@JsonKey(name: 'name') String? name}) = _PositionData;

  factory PositionData.fromJson(Map<String, dynamic> json) =>
      _$PositionDataFromJson(json);
}

@freezed
class StatusData with _$StatusData {
  factory StatusData({@JsonKey(name: 'name') String? name}) = _StatusData;

  factory StatusData.fromJson(Map<String, dynamic> json) =>
      _$StatusDataFromJson(json);
}
