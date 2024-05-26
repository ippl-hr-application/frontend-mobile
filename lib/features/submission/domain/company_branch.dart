// // ignore_for_file: invalid_annotation_target

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'company_branch.freezed.dart';
// part 'company_branch.g.dart';


// @freezed
// class CompanyBranchResponse with _$CompanyResponse {
//   factory CompanyBranchResponse(
//           {@JsonKey(name: 'success') bool? success,
//           @JsonKey(name: 'message') String? message,
//           @JsonKey(name: 'data') List<CompanyBranchData>? data}) =
//       _CompanyBranchResponse;

//   factory CompanyBranchResponse.fromJson(Map<String, dynamic> json) =>
//       _$CompanyBranchResponseFromJson(json);
// }

// @freezed
// class CompanyBranchData with _$ComapanyBranchData {
//   factory CompanyBranchData({
//     @JsonKey(name: 'company_branch_id') String? companyBranchId,
//     @JsonKey(name: 'city') String? city,
//   }) = _CompanyBranchData;

//   factory CompanyBranchData.fromJson(Map<String, dynamic> json) =>
//       _$CompanyBranchDataFromJson(json);
// }
