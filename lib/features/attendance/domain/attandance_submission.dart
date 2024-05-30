// attandance_submission.dart
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attandance_submission.freezed.dart';
part 'attandance_submission.g.dart';

class FileConverter implements JsonConverter<File, String> {
  const FileConverter();

  @override
  File fromJson(String json) {
    return File(json);
  }

  @override
  String toJson(File object) {
    return object.path;
  }
}

@freezed
class AttandanceHistoryRequest with _$AttandanceHistoryRequest {
  factory AttandanceHistoryRequest({
    @JsonKey(name: 'attendance_id') required String attendanceId,
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'attendance_submission_file') required String attendanceSubmissionFile,
  }) = _AttandanceHistoryRequest;

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
