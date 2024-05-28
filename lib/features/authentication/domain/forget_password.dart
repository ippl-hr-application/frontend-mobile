import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password.freezed.dart';
part 'forget_password.g.dart';

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
