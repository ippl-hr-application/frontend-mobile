// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission.freezed.dart';
part 'submission.g.dart';

@freezed
class SubmissionHistory with _$SubmissionHistory {
  factory SubmissionHistory({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<SubmissionData>? data,
  }) = _SubmissionHistory;

  factory SubmissionHistory.fromJson(Map<String, dynamic> json) =>
      _$SubmissionHistoryFromJson(json);
}

@freezed
class SubmissionData with _$SubmissionData {
  factory SubmissionData({
    @JsonKey(name: 'submission_id') int? submission_id,
    @JsonKey(name: 'submission_date') String? submission_date,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'type') String? type,
  }) = _SubmissionData;

  factory SubmissionData.fromJson(Map<String, dynamic> json) =>
      _$SubmissionDataFromJson(json);
}
