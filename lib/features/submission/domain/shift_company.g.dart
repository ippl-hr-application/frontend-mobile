// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShiftCompanyResponseImpl _$$ShiftCompanyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ShiftCompanyResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataShift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShiftCompanyResponseImplToJson(
        _$ShiftCompanyResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataShiftImpl _$$DataShiftImplFromJson(Map<String, dynamic> json) =>
    _$DataShiftImpl(
      shift_id: (json['shift_id'] as num?)?.toInt(),
      companyBranchId: json['company_branch_id'] as String?,
      name: json['name'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
    );

Map<String, dynamic> _$$DataShiftImplToJson(_$DataShiftImpl instance) =>
    <String, dynamic>{
      'shift_id': instance.shift_id,
      'company_branch_id': instance.companyBranchId,
      'name': instance.name,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
