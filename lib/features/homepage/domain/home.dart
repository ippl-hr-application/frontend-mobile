// ignore_for_file: invalid_annotation_target
import 'package:flutter/src/widgets/text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meraih_mobile/widgets/card_attendance.dart';
part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  factory HomeResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') HomeData? data}) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@freezed
class HomeData with _$HomeData {
  factory HomeData(
      {@JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'employee_name') String? employeeName,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'shift_id') int? shiftId,
      @JsonKey(name: 'shift_name') String? shiftName,
      @JsonKey(name: 'job_position') String? jobPosition}) = _HomeData;

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}
