import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_branch.g.dart';
part 'company_branch.freezed.dart';

@freezed
class CompanyBranchId with _$CompanyBranchId {
  factory CompanyBranchId({
    @JsonKey(name: 'success') required bool? success,
    @JsonKey(name: 'data') required Data? data,
    @JsonKey(name: 'message') required String? message,
  }) = _CompanyBranchId;

  factory CompanyBranchId.fromJson(Map<String, dynamic> json) =>
      _$CompanyBranchIdFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({@JsonKey(name: 'branches') List<Branchs>? branches}) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Branchs with _$Branchs {
  factory Branchs({
    @JsonKey(name: 'company_branch_id') String? company_branch_id,
    @JsonKey(name: 'company_id') String? company_id,
    @JsonKey(name: 'hq_initial') String? hq_initial,
  }) = _Branchs;

  factory Branchs.fromJson(Map<String, dynamic> json) =>
      _$BranchsFromJson(json);
}
