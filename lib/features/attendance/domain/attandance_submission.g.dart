// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attandance_submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttandanceHistoryRequestImpl _$$AttandanceHistoryRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AttandanceHistoryRequestImpl(
      attendanceId: json['attendance_id'] as String,
      reason: json['reason'] as String,
      attendanceSubmissionFile: json['attendance_submission_file'] as String,
    );

Map<String, dynamic> _$$AttandanceHistoryRequestImplToJson(
        _$AttandanceHistoryRequestImpl instance) =>
    <String, dynamic>{
      'attendance_id': instance.attendanceId,
      'reason': instance.reason,
      'attendance_submission_file': instance.attendanceSubmissionFile,
    };

_$AttandanceHistoryDataImpl _$$AttandanceHistoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AttandanceHistoryDataImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$AttandanceHistoryDataImplToJson(
        _$AttandanceHistoryDataImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
