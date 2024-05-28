// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckinRequestImpl _$$CheckinRequestImplFromJson(Map<String, dynamic> json) =>
    _$CheckinRequestImpl(
      attendance_file:
          const FileConverter().fromJson(json['attendance_file'] as String),
    );

Map<String, dynamic> _$$CheckinRequestImplToJson(
        _$CheckinRequestImpl instance) =>
    <String, dynamic>{
      'attendance_file': const FileConverter().toJson(instance.attendance_file),
    };

_$CheckinResponseImpl _$$CheckinResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckinResponseImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : CheckinData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckinResponseImplToJson(
        _$CheckinResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$CheckinDataImpl _$$CheckinDataImplFromJson(Map<String, dynamic> json) =>
    _$CheckinDataImpl(
      date: json['date'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$CheckinDataImplToJson(_$CheckinDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'from': instance.from,
      'to': instance.to,
      'time': instance.time,
    };
