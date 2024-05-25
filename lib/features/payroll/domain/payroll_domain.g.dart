// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayroleHistoryImpl _$$PayroleHistoryImplFromJson(Map<String, dynamic> json) =>
    _$PayroleHistoryImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Payrolls.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayroleHistoryImplToJson(
        _$PayroleHistoryImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$PayrollsImpl _$$PayrollsImplFromJson(Map<String, dynamic> json) =>
    _$PayrollsImpl(
      payrolls: (json['payrolls'] as List<dynamic>?)
          ?.map((e) => PayrollData.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_wage: (json['total_wage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PayrollsImplToJson(_$PayrollsImpl instance) =>
    <String, dynamic>{
      'payrolls': instance.payrolls,
      'total_wage': instance.total_wage,
    };

_$PayrollDataImpl _$$PayrollDataImplFromJson(Map<String, dynamic> json) =>
    _$PayrollDataImpl(
      payroll_id: (json['payroll_id'] as num?)?.toInt(),
      company_branch_id: json['company_branch_id'] as String?,
      employee_id: json['employee_id'] as String?,
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      wage: (json['wage'] as num?)?.toInt(),
      status: json['status'] as String?,
      employee: json['employee'] == null
          ? null
          : Employess.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayrollDataImplToJson(_$PayrollDataImpl instance) =>
    <String, dynamic>{
      'payroll_id': instance.payroll_id,
      'company_branch_id': instance.company_branch_id,
      'employee_id': instance.employee_id,
      'month': instance.month,
      'year': instance.year,
      'wage': instance.wage,
      'status': instance.status,
      'employee': instance.employee,
    };

_$EmployessImpl _$$EmployessImplFromJson(Map<String, dynamic> json) =>
    _$EmployessImpl(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
    );

Map<String, dynamic> _$$EmployessImplToJson(_$EmployessImpl instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
    };
