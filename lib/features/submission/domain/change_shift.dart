// ignore_for_file: invalid_annotation_target

import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_shift.freezed.dart';
part 'change_shift.g.dart';

@freezed
class ChangeShiftRequest with _$ChangeShiftRequest {
  factory ChangeShiftRequest(
          {@JsonKey(name: 'target_date') required String targetDate,
          @JsonKey(name: 'current_shift_id') required int currentShift,
          @JsonKey(name: 'target_shift_id') required int targetShift}) =
      _ChangeShiftRequest;

  factory ChangeShiftRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeShiftRequestFromJson(json);
}

@freezed
class ChangeShiftResponse with _$ChangeShiftResponse {
  factory ChangeShiftResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'data') required Data data,
    @JsonKey(name: 'message') required String message,
  }) = _ChangeShiftResponse;

  factory ChangeShiftResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeShiftResponseFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'result') required Result result,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    @JsonKey(name: 'employee_id') required String employeeId,
    @JsonKey(name: 'target_shift_id') required int targetShiftId,
    @JsonKey(name: 'current_shift_id') required int currentShiftId,
    @JsonKey(name: 'target_date') required String targetDate,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
