// forgetpassword.dart

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgetpassword.freezed.dart';
part 'forgetpassword.g.dart';

@freezed
class ForgetpasswordRequest with _$ForgetpasswordRequest {
  factory ForgetpasswordRequest({
    @JsonKey(name: 'employee_id') required String employeeId,
  }) = _ForgetpasswordRequest;

  factory ForgetpasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetpasswordRequestFromJson(json);
}

@freezed
class ForgetpasswordResponse with _$ForgetpasswordResponse {
  factory ForgetpasswordResponse({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
  }) = _ForgetpasswordResponse;

  factory ForgetpasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetpasswordResponseFromJson(json);
}
