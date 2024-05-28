// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmissionHistoryImpl _$$SubmissionHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionHistoryImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SubmissionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubmissionHistoryImplToJson(
        _$SubmissionHistoryImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$SubmissionDataImpl _$$SubmissionDataImplFromJson(Map<String, dynamic> json) =>
    _$SubmissionDataImpl(
      submission_id: (json['submission_id'] as num?)?.toInt(),
      submission_date: json['submission_date'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$SubmissionDataImplToJson(
        _$SubmissionDataImpl instance) =>
    <String, dynamic>{
      'submission_id': instance.submission_id,
      'submission_date': instance.submission_date,
      'status': instance.status,
      'type': instance.type,
    };
