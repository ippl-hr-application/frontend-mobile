import 'dart:convert';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'request_attandance.freezed.dart';
part 'request_attandance.g.dart';

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
class RequestAttandance with _$RequestAttandance {
  factory RequestAttandance(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') RequestData? data}) = _RequestAttandance;

  factory RequestAttandance.fromJson(Map<String, dynamic> json) =>
      _$RequestAttandanceFromJson(json);
}

@freezed
class RequestData with _$RequestData {
  factory RequestData({
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'employee_id') String? employee_id,
  }) = _RequestData;

  factory RequestData.fromJson(Map<String, dynamic> json) =>
      _$RequestDataFromJson(json);
}
