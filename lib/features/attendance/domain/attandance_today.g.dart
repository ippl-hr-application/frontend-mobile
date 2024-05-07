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
      date: json['date'] as String?,
      checkIn: json['check_in'] as String?,
    );

Map<String, dynamic> _$$DataResponseImplToJson(_$DataResponseImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'check_in': instance.checkIn,
    };
