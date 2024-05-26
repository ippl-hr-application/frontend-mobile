// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attandance_recap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttandanceRecapImpl _$$AttandanceRecapImplFromJson(
        Map<String, dynamic> json) =>
    _$AttandanceRecapImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataRecap.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttandanceRecapImplToJson(
        _$AttandanceRecapImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataRecapImpl _$$DataRecapImplFromJson(Map<String, dynamic> json) =>
    _$DataRecapImpl(
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => DetailRecap.fromJson(e as Map<String, dynamic>))
          .toList(),
      numberAbsences: (json['number_of_absences'] as num?)?.toInt(),
      numberAttendees: (json['number_of_attendees'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataRecapImplToJson(_$DataRecapImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'number_of_absences': instance.numberAbsences,
      'number_of_attendees': instance.numberAttendees,
    };

_$DetailRecapImpl _$$DetailRecapImplFromJson(Map<String, dynamic> json) =>
    _$DetailRecapImpl(
      attendanceId: (json['attendance_id'] as num?)?.toInt(),
      date: json['date'] as String?,
      isPresent: json['isPresent'] as bool?,
    );

Map<String, dynamic> _$$DetailRecapImplToJson(_$DetailRecapImpl instance) =>
    <String, dynamic>{
      'attendance_id': instance.attendanceId,
      'date': instance.date,
      'isPresent': instance.isPresent,
    };
