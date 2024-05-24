// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attandance_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttandanceTodayImpl _$$AttandanceTodayImplFromJson(
        Map<String, dynamic> json) =>
    _$AttandanceTodayImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : DataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttandanceTodayImplToJson(
        _$AttandanceTodayImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$DataResponseImpl _$$DataResponseImplFromJson(Map<String, dynamic> json) =>
    _$DataResponseImpl(
      attendanceId: (json['attendance_id'] as num?)?.toInt(),
      date: json['date'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      checks: (json['checks'] as List<dynamic>?)
          ?.map((e) => ChecksData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataResponseImplToJson(_$DataResponseImpl instance) =>
    <String, dynamic>{
      'attendance_id': instance.attendanceId,
      'date': instance.date,
      'from': instance.from,
      'to': instance.to,
      'checks': instance.checks,
    };

_$ChecksDataImpl _$$ChecksDataImplFromJson(Map<String, dynamic> json) =>
    _$ChecksDataImpl(
      time: json['time'] as String?,
      type: json['type'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$ChecksDataImplToJson(_$ChecksDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'type': instance.type,
      'status': instance.status,
    };
