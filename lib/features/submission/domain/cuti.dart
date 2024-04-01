// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
part 'cuti.freezed.dart';
part 'cuti.g.dart';

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
class CutiRequest with _$CutiRequest {
  factory CutiRequest({
    @JsonKey(name: 'from') required String from,
    @JsonKey(name: 'leave_reason') required String leave_reason,
    @JsonKey(name: 'leave_type') required String leave_type,
    @FileConverter() @JsonKey(name: 'leave_file') required File leave_file,
    @JsonKey(name: 'to') required String to,
  }) = _CutiRequest;

  factory CutiRequest.fromJson(Map<String, dynamic> json) =>
      _$CutiRequestFromJson(json);
}

@freezed
class CutiResponse with _$CutiResponse {
  factory CutiResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CutiData? data}) = _CutiResponse;

  factory CutiResponse.fromJson(Map<String, dynamic> json) =>
      _$CutiResponseFromJson(json);
}

@freezed
class CutiData with _$CutiData {
  factory CutiData({
    @JsonKey(name: 'leave_submission_id') int? leave_submission_id,
    @JsonKey(name: 'submision_id') int? submision_id,
    @JsonKey(name: 'employee_file_id') int? employee_file_id,
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'leave_reason') String? leave_reason,
    @JsonKey(name: 'leave_type') String? leave_type,
  }) = _CutiData;

  factory CutiData.fromJson(Map<String, dynamic> json) =>
      _$CutiDataFromJson(json);
}
