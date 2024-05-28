// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_company.freezed.dart';
part 'shift_company.g.dart';

@freezed
class ShiftCompanyResponse with _$ShiftCompanyResponse {
  factory ShiftCompanyResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DataShift>? data}) = _ShiftCompanyResponse;

  factory ShiftCompanyResponse.fromJson(Map<String, dynamic> json) =>
      _$ShiftCompanyResponseFromJson(json);
}

@freezed
class DataShift with _$DataShift {
  factory DataShift(
      {@JsonKey(name: 'shift_id') int? shift_id,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime}) = _DataShift;

  factory DataShift.fromJson(Map<String, dynamic> json) =>
      _$DataShiftFromJson(json);
}
