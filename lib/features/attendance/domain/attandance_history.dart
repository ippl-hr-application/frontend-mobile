// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attandance_history.g.dart';
part 'attandance_history.freezed.dart';

@freezed
class AttandanceHistoryDate with _$AttandanceHistoryDate {
  factory AttandanceHistoryDate(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataHistory? data}) = _AttandanceHistoryDate;

  factory AttandanceHistoryDate.fromJson(Map<String, dynamic> json) =>
      _$AttandanceHistoryDateFromJson(json);
}

@freezed
class DataHistory with _$DataHistory {
  factory DataHistory({
    @JsonKey(name: 'attendance_id') int? attendanceId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'check_in_time') String? checkInTime,
  }) = _DataHistory;

  factory DataHistory.fromJson(Map<String, dynamic> json) =>
      _$DataHistoryFromJson(json);
}
