// ignore_for_file: invalid_annotation_target

import 'dart:io';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'izin.freezed.dart';
part 'izin.g.dart';

class FileConverter implements JsonConverter<File, String> {
  const FileConverter();

  @override
  File fromJson(String json) {
    // Convert the JSON string back to a File object
    return File(json);
  }

  @override
  String toJson(File object) {
    // Convert the File object to its path string
    return object.path;
  }
}

@freezed
class IzinRequest with _$IzinRequest {
  factory IzinRequest({
    @JsonKey(name: 'from') required String from,
    @JsonKey(name: 'permission_reason') required String permission_reason,
    @JsonKey(name: 'permission_file') required String permission_file,
    @JsonKey(name: 'to') required String to,
  }) = _IzinRequest;

  factory IzinRequest.fromJson(Map<String, dynamic> json) =>
      _$IzinRequestFromJson(json);
}

@freezed
class IzinResponse with _$IzinResponse {
  factory IzinResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') IzinData? data}) = _IzinResponse;

  factory IzinResponse.fromJson(Map<String, dynamic> json) =>
      _$IzinResponseFromJson(json);
}

@freezed
class IzinData with _$IzinData {
  factory IzinData({
    @JsonKey(name: 'permission_submission_id') int? permission_submission_id,
    @JsonKey(name: 'submision_id') int? submision_id,
    @JsonKey(name: 'employee_file_id') int? employee_file_id,
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'permission_reason') String? permission_reason,
    @JsonKey(name: 'type') String? type,
  }) = _IzinData;

  factory IzinData.fromJson(Map<String, dynamic> json) =>
      _$IzinDataFromJson(json);
}
