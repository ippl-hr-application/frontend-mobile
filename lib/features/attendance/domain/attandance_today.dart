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
}

@freezed
class DataResponse with _$DataResponse {
  factory DataResponse(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'check_in') String? checkIn}) = _DataResponse;

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}
