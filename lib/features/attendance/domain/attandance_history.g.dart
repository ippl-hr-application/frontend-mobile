// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attandance_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttandanceHistoryDateImpl _$$AttandanceHistoryDateImplFromJson(
        Map<String, dynamic> json) =>
    _$AttandanceHistoryDateImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataHistory.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttandanceHistoryDateImplToJson(
        _$AttandanceHistoryDateImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataHistoryImpl _$$DataHistoryImplFromJson(Map<String, dynamic> json) =>
    _$DataHistoryImpl(
      attendanceId: json['attendance_id'] as String?,
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      checkInTime: json['check_in_time'] as String?,
    );

Map<String, dynamic> _$$DataHistoryImplToJson(_$DataHistoryImpl instance) =>
    <String, dynamic>{
      'attendance_id': instance.attendanceId,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'check_in_time': instance.checkInTime,
    };
