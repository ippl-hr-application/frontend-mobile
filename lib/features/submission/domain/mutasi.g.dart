// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutasi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MutasiRequestImpl _$$MutasiRequestImplFromJson(Map<String, dynamic> json) =>
    _$MutasiRequestImpl(
      mutationReason: json['mutation_reason'] as String,
      currenCompanyBranchId: json['current_company_branch_id'] as String,
      targetCompanyBranchId: json['target_company_branch_id'] as String,
      mutationFile:
          const FileConverter().fromJson(json['mutation_file'] as String),
    );

Map<String, dynamic> _$$MutasiRequestImplToJson(_$MutasiRequestImpl instance) =>
    <String, dynamic>{
      'mutation_reason': instance.mutationReason,
      'current_company_branch_id': instance.currenCompanyBranchId,
      'target_company_branch_id': instance.targetCompanyBranchId,
      'mutation_file': const FileConverter().toJson(instance.mutationFile),
    };

_$MutasiResponseImpl _$$MutasiResponseImplFromJson(Map<String, dynamic> json) =>
    _$MutasiResponseImpl(
      success: json['success'] as bool,
      data: DataMutasi.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$MutasiResponseImplToJson(
        _$MutasiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$DataMutasuImpl _$$DataMutasuImplFromJson(Map<String, dynamic> json) =>
    _$DataMutasuImpl(
      mutationReason: json['mutation_reason'] as String,
    );

Map<String, dynamic> _$$DataMutasuImplToJson(_$DataMutasuImpl instance) =>
    <String, dynamic>{
      'mutation_reason': instance.mutationReason,
    };
