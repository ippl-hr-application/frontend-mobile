// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
part 'checkin.freezed.dart';
part 'checkin.g.dart';

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
class CheckinRequest with _$CheckinRequest {
  factory CheckinRequest({
    @FileConverter()
    @JsonKey(name: 'attendance_file')
    required File attendance_file,
  }) = _CheckinRequest;

  factory CheckinRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckinRequestFromJson(json);
}

@freezed
class CheckinResponse with _$CheckinResponse {
  factory CheckinResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') CheckinData? data}) = _CheckinResponse;

  factory CheckinResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckinResponseFromJson(json);
}

@freezed
class CheckinData with _$CheckinData {
  factory CheckinData({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'time') String? time,
  }) = _CheckinData;

  factory CheckinData.fromJson(Map<String, dynamic> json) =>
      _$CheckinDataFromJson(json);
}
