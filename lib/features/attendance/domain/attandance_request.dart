import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'attandance_request.freezed.dart';
part 'attandance_request.g.dart';

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
class AttandanceRequest with _$AttandanceRequest {
  factory AttandanceRequest(
      {@JsonKey(name: 'attendance_id') required int attendanceId,
      @JsonKey(name: "reason") required String reason,
      @FileConverter()
      @JsonKey(name: 'attendance_submission_file')
      required File attendanceSubmissionFile}) = _AttandanceRequest;

  factory AttandanceRequest.fromJson(Map<String, dynamic> json) =>
      _$AttandanceRequestFromJson(json);
}


@freezed
class AttandanceRequestResponse with _$AttandanceRequestResponse {
  factory AttandanceRequestResponse({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
  }) = _AttandanceRequestResponse;

  factory AttandanceRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$AttandanceRequestResponseFromJson(json);
}
