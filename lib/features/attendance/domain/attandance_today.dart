// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attandance_today.g.dart';
part 'attandance_today.freezed.dart';

@freezed
class AttandanceToday with _$AttandanceToday {
  factory AttandanceToday(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') DataResponse? data}) = _AttandanceToday;

  factory AttandanceToday.fromJson(Map<String, dynamic> json) =>
      _$AttandanceTodayFromJson(json);

  static fromDataResponse(AttandanceToday attandanceTodayHistory) {}
}

@freezed
class DataResponse with _$DataResponse {
  factory DataResponse(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'checks') List<ChecksData>? checks}) = _DataResponse;

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}

@freezed
class ChecksData with _$ChecksData {
  factory ChecksData({
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') String? status,
  }) = _ChecksData;

  factory ChecksData.fromJson(Map<String, dynamic> json) =>
      _$ChecksDataFromJson(json);
}
