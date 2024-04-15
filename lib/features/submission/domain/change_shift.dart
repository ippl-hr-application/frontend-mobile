// ignore_for_file: invalid_annotation_target

import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_shift.freezed.dart';
part 'change_shift.g.dart';

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
class ChangeShiftRequest with _$ChangeShiftRequest {
  factory ChangeShiftRequest(
          {@JsonKey(name: 'target_date') required String targetDate,
          @JsonKey(name: 'current_shift_id') required String currentShift,
          @JsonKey(name: 'target_shift_id') required String targetShift}) 
          = _ChangeShiftRequest;

  factory ChangeShiftRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeShiftRequestFromJson(json);
}

@freezed
class ChangeShiftResponse with _$ChangeShiftResponse {
  factory ChangeShiftResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ShiftData? data}) = _ChangeShiftResponse;

  factory ChangeShiftResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeShiftResponseFromJson(json);
}

@freezed
class ShiftData with _$ShiftData {
  factory ShiftData(
      {@JsonKey(name: 'target_date') required String targetDate,
      @JsonKey(name: 'current_shift_id') required String currentShift,
      @JsonKey(name: 'target_shift_id') required String targetShift,
      @JsonKey(name: 'type') required String type}) = _ShiftData;

  factory ShiftData.fromJson(Map<String, dynamic> json) => _$ShiftDataFromJson(json);
}
