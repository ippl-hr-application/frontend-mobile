// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attandance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttandanceRequestImpl _$$AttandanceRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AttandanceRequestImpl(
      attendanceId: (json['attendance_id'] as num).toInt(),
      reason: json['reason'] as String,
      attendanceSubmissionFile: const FileConverter()
          .fromJson(json['attendance_submission_file'] as String),
    );

Map<String, dynamic> _$$AttandanceRequestImplToJson(
        _$AttandanceRequestImpl instance) =>
    <String, dynamic>{
      'attendance_id': instance.attendanceId,
      'reason': instance.reason,
      'attendance_submission_file':
          const FileConverter().toJson(instance.attendanceSubmissionFile),
    };

_$AttandanceRequestResponseImpl _$$AttandanceRequestResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttandanceRequestResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AttandanceRequestResponseImplToJson(
        _$AttandanceRequestResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
