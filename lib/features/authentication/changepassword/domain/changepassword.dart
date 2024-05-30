// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'changepassword.freezed.dart';
part 'changepassword.g.dart';

@freezed
class ChangepasswordRequest with _$ChangepasswordRequest {
  factory ChangepasswordRequest({
    @JsonKey(name: 'old_password') required String old_password,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'confirm_password') required String confirm_password,
  }) = _ChangepasswordRequest;

  factory ChangepasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangepasswordRequestFromJson(json);
}

@freezed
class ChangepasswordResponse with _$ChangepasswordResponse {
  factory ChangepasswordResponse({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') ChangepasswordData? data,
  }) = _ChangepasswordResponse;

  factory ChangepasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangepasswordResponseFromJson(json);
}

@freezed
class ChangepasswordData with _$ChangepasswordData {
  factory ChangepasswordData({
    @JsonKey(name: 'token') String? token,
  }) = _ChangepasswordData;

  factory ChangepasswordData.fromJson(Map<String, dynamic> json) =>
      _$ChangepasswordDataFromJson(json);
}
