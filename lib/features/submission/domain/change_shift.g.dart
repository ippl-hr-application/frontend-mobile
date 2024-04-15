// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeShiftRequestImpl _$$ChangeShiftRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeShiftRequestImpl(
      targetDate: json['target_date'] as String,
      currentShift: json['current_shift_id'] as String,
      targetShift: json['target_shift_id'] as String,
    );

Map<String, dynamic> _$$ChangeShiftRequestImplToJson(
        _$ChangeShiftRequestImpl instance) =>
    <String, dynamic>{
      'target_date': instance.targetDate,
      'current_shift_id': instance.currentShift,
      'target_shift_id': instance.targetShift,
    };

_$ChangeShiftResponseImpl _$$ChangeShiftResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeShiftResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ShiftData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChangeShiftResponseImplToJson(
        _$ChangeShiftResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ShiftDataImpl _$$ShiftDataImplFromJson(Map<String, dynamic> json) =>
    _$ShiftDataImpl(
      targetDate: json['target_date'] as String,
      currentShift: json['current_shift_id'] as String,
      targetShift: json['target_shift_id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ShiftDataImplToJson(_$ShiftDataImpl instance) =>
    <String, dynamic>{
      'target_date': instance.targetDate,
      'current_shift_id': instance.currentShift,
      'target_shift_id': instance.targetShift,
      'type': instance.type,
    };
