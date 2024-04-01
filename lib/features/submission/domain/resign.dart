// ignore_for_file: invalid_annotation_target

import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'resign.freezed.dart';
part 'resign.g.dart';

@freezed
class ResignRequest with _$ResignRequest {
  factory ResignRequest({
    @JsonKey(name: 'permission_reason') required String permission_reason,
    @JsonKey(name: 'permission_file') required String? permission_file,
  }) = _ResignRequest;

  factory ResignRequest.fromJson(Map<String, dynamic> json) =>
      _$ResignRequestFromJson(json);
}

@freezed
class ResignResponse with _$ResignResponse {
  factory ResignResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ResignData? data}) = _ResignResponse;

  factory ResignResponse.fromJson(Map<String, dynamic> json) =>
      _$ResignResponseFromJson(json);
}

@freezed
class ResignData with _$ResignData {
  factory ResignData({
    @JsonKey(name: 'permission_submission_id') int? permission_submission_id,
    @JsonKey(name: 'submision_id') int? submision_id,
    @JsonKey(name: 'employee_file_id') int? employee_file_id,
    @JsonKey(name: 'permission_reason') String? permission_reason,
    @JsonKey(name: 'type') String? type,
  }) = _ResignData;

  factory ResignData.fromJson(Map<String, dynamic> json) =>
      _$ResignDataFromJson(json);
}
