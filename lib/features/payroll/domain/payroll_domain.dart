// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payroll_domain.g.dart';
part 'payroll_domain.freezed.dart';

@freezed
class PayroleHistory with _$PayroleHistory {
  factory PayroleHistory({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Payrolls? data,
  }) = _PayroleHistory;

  factory PayroleHistory.fromJson(Map<String, dynamic> json) =>
      _$PayroleHistoryFromJson(json);
}

@freezed
class Payrolls with _$Payrolls {
  factory Payrolls({@JsonKey(name: 'payrolls') List<PayrollData>? payrolls}) =
      _Payrolls;

  factory Payrolls.fromJson(Map<String, dynamic> json) =>
      _$PayrollsFromJson(json);
}

@freezed
class PayrollData with _$PayrollData {
  factory PayrollData({
    @JsonKey(name: 'payroll_id') int? payroll_id,
    @JsonKey(name: 'company_branch_id') String? company_branch_id,
    @JsonKey(name: 'employee_id') String? employee_id,
    @JsonKey(name: 'month') int? month,
    @JsonKey(name: 'year') int? year,
    @JsonKey(name: 'wage') int? wage,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'employee') Employess? employee,
  }) = _PayrollData;

  factory PayrollData.fromJson(Map<String, dynamic> json) =>
      _$PayrollDataFromJson(json);
}

@freezed
class Employess with _$Employess {
  factory Employess({
    @JsonKey(name: 'first_name') String? first_name,
    @JsonKey(name: 'last_name') String? last_name,
  }) = _Employess;

  factory Employess.fromJson(Map<String, dynamic> json) =>
      _$EmployessFromJson(json);
}
