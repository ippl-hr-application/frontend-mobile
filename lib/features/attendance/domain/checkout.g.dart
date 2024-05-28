// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckoutRequestImpl _$$CheckoutRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutRequestImpl(
      attendance_file:
          const FileConverter().fromJson(json['attendance_file'] as String),
    );

Map<String, dynamic> _$$CheckoutRequestImplToJson(
        _$CheckoutRequestImpl instance) =>
    <String, dynamic>{
      'attendance_file': const FileConverter().toJson(instance.attendance_file),
    };

_$CheckoutResponseImpl _$$CheckoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutResponseImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : CheckoutData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckoutResponseImplToJson(
        _$CheckoutResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$CheckoutDataImpl _$$CheckoutDataImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutDataImpl(
      date: json['date'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$CheckoutDataImplToJson(_$CheckoutDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'from': instance.from,
      'to': instance.to,
      'time': instance.time,
    };
