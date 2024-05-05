// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'annoucment.g.dart';
part 'annoucment.freezed.dart';

@freezed
class AnnoucmentResponse with _$AnnoucmentResponse {
  factory AnnoucmentResponse({
    @JsonKey(name: "status") required String? status,
    @JsonKey(name: "data") List<AnnoucmentData>? data,
  }) = _AnnoucmentResponse;

  factory AnnoucmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AnnoucmentResponseFromJson(json);
}

@freezed
class AnnoucmentData with _$AnnoucmentData {
  factory AnnoucmentData({
    @JsonKey(name: 'company_announcement_id')
    required String? companyAnnouncementId,
    @JsonKey(name: 'company_id') required String? companyId,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'description') required String? description,
  }) = _AnnoucmentData;

  factory AnnoucmentData.fromJson(Map<String, dynamic> json) =>
      _$AnnoucmentDataFromJson(json);
}
