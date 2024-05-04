// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeShiftRequestImpl _$$ChangeShiftRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeShiftRequestImpl(
      targetDate: json['target_date'] as String,
      currentShift: (json['current_shift_id'] as num).toInt(),
      targetShift: (json['target_shift_id'] as num).toInt(),
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$ChangeShiftRequestImplToJson(
        _$ChangeShiftRequestImpl instance) =>
    <String, dynamic>{
      'target_date': instance.targetDate,
      'current_shift_id': instance.currentShift,
      'target_shift_id': instance.targetShift,
      'reason': instance.reason,
    };

_$ChangeShiftResponseImpl _$$ChangeShiftResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeShiftResponseImpl(
      success: json['success'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ChangeShiftResponseImplToJson(
        _$ChangeShiftResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      employeeId: json['employee_id'] as String,
      targetShiftId: (json['target_shift_id'] as num).toInt(),
      currentShiftId: (json['current_shift_id'] as num).toInt(),
      targetDate: json['target_date'] as String,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'target_shift_id': instance.targetShiftId,
      'current_shift_id': instance.currentShiftId,
      'target_date': instance.targetDate,
    };
