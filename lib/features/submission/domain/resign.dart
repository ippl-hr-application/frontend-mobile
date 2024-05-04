// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
part 'resign.freezed.dart';
part 'resign.g.dart';

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
class ResignRequest with _$ResignRequest {
  factory ResignRequest({
    @JsonKey(name: 'reason') required String reason,
    @FileConverter() @JsonKey(name: 'resign_file') required File resign_file,
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
  factory ResignData(
      {@JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'employee_id') String? employee_id}) = _ResignData;

  factory ResignData.fromJson(Map<String, dynamic> json) =>
      _$ResignDataFromJson(json);
}
