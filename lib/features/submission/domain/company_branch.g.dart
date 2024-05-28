// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyBranchIdImpl _$$CompanyBranchIdImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyBranchIdImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CompanyBranchIdImplToJson(
        _$CompanyBranchIdImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      branches: (json['branches'] as List<dynamic>?)
          ?.map((e) => Branchs.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'branches': instance.branches,
    };

_$BranchsImpl _$$BranchsImplFromJson(Map<String, dynamic> json) =>
    _$BranchsImpl(
      company_branch_id: json['company_branch_id'] as String?,
      company_id: json['company_id'] as String?,
      hq_initial: json['hq_initial'] as String?,
    );

Map<String, dynamic> _$$BranchsImplToJson(_$BranchsImpl instance) =>
    <String, dynamic>{
      'company_branch_id': instance.company_branch_id,
      'company_id': instance.company_id,
      'hq_initial': instance.hq_initial,
    };
