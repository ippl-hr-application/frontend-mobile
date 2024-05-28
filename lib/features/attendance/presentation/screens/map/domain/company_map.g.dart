// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyMapImpl _$$CompanyMapImplFromJson(Map<String, dynamic> json) =>
    _$CompanyMapImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : BranchData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyMapImplToJson(_$CompanyMapImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$BranchDataImpl _$$BranchDataImplFromJson(Map<String, dynamic> json) =>
    _$BranchDataImpl(
      branch: json['branch'] == null
          ? null
          : Branch.fromJson(json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BranchDataImplToJson(_$BranchDataImpl instance) =>
    <String, dynamic>{
      'branch': instance.branch,
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      address: json['address'] as String?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      hqInitial: json['hq_initial'] as String?,
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'province': instance.province,
      'city': instance.city,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'hq_initial': instance.hqInitial,
    };
