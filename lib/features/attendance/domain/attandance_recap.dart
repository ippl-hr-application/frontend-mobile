// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attandance_recap.g.dart';
part 'attandance_recap.freezed.dart';

@freezed
class AttandanceRecap with _$AttandanceRecap {
  factory AttandanceRecap(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataRecap? data}) = _AttandanceRecap;

  factory AttandanceRecap.fromJson(Map<String, dynamic> json) =>
      _$AttandanceRecapFromJson(json);
}

@freezed
class DataRecap with _$DataRecap {
  factory DataRecap(
      {@JsonKey(name: 'detail') List<DetailRecap>? detail,
      @JsonKey(name: 'number_of_absences') int? numberAbsences,
      @JsonKey(name: 'number_of_attendees') int? numberAttendees}) = _DataRecap;

  factory DataRecap.fromJson(Map<String, dynamic> json) =>
      _$DataRecapFromJson(json);
}

@freezed
class DetailRecap with _$DetailRecap {
  factory DetailRecap(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'isPresent') bool? isPresent}) = _DetailRecap;

  factory DetailRecap.fromJson(Map<String, dynamic> json) =>
      _$DetailRecapFromJson(json);
}
