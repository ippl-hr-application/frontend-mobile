// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'attandance_submission.freezed.dart';
part 'attandance_submission.g.dart';

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
class AttandanceHistoryRequest with _$AttandanceHistoryRequest {
  factory AttandanceHistoryRequest(
          {@JsonKey(name: 'attendance_id') required String attendanceId,
          @JsonKey(name: 'attendance_submission_file')
          required String attendanceSubmissionFile,
          @JsonKey(name: 'reason') required String reason}) =
      _AttandanceHistoryRequest;

  factory AttandanceHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$AttandanceHistoryRequestFromJson(json);
}

@freezed
class AttandanceHistoryData with _$AttandanceHistoryData {
  factory AttandanceHistoryData(
      {
        @JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') String? data}) = _AttandanceHistoryData;

  factory AttandanceHistoryData.fromJson(Map<String, dynamic> json) =>
      _$AttandanceHistoryDataFromJson(json);
}
