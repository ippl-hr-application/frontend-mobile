// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_map.g.dart';
part 'company_map.freezed.dart';

@freezed
class CompanyMap with _$CompanyMap {
  factory CompanyMap({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'data') BranchData? data,
  }) = _CompanyMap;

  factory CompanyMap.fromJson(Map<String, dynamic> json) =>
      _$CompanyMapFromJson(json);
}

@freezed
class BranchData with _$BranchData {
  factory BranchData({
    @JsonKey(name: 'branch') Branch? branch,
  }) = _BranchData;

  factory BranchData.fromJson(Map<String, dynamic> json) =>
      _$BranchDataFromJson(json);
}

@freezed
class Branch with _$Branch {
  factory Branch({
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'province') String? province,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'longitude') double? longitude,
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'hq_initial') String? hqInitial,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
