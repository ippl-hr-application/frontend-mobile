// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgetpassword.freezed.dart';
part 'forgetpassword.g.dart';

@freezed
class ForgetRequest with _$ForgetRequest {
  factory ForgetRequest({
    @JsonKey(name: 'employee_id') required String employeeId,
  }) = _ForgetRequest;

  factory ForgetRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetRequestFromJson(json);
}

@freezed
class ForgetResponse with _$ForgetResponse {
  factory ForgetResponse({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') ForgetData? data,
  }) = _ForgetResponse;

  factory ForgetResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetResponseFromJson(json);
}

@freezed
class ForgetData with _$ForgetData {
  factory ForgetData({
    @JsonKey(name: 'token') String? token,
  }) = _ForgetData;

  factory ForgetData.fromJson(Map<String, dynamic> json) =>
      _$ForgetDataFromJson(json);
}
