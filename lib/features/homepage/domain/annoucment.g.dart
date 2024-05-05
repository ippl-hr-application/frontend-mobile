// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annoucment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnoucmentResponseImpl _$$AnnoucmentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnoucmentResponseImpl(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AnnoucmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnnoucmentResponseImplToJson(
        _$AnnoucmentResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$AnnoucmentDataImpl _$$AnnoucmentDataImplFromJson(Map<String, dynamic> json) =>
    _$AnnoucmentDataImpl(
      companyAnnouncementId: json['company_announcement_id'] as String?,
      companyId: json['company_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$AnnoucmentDataImplToJson(
        _$AnnoucmentDataImpl instance) =>
    <String, dynamic>{
      'company_announcement_id': instance.companyAnnouncementId,
      'company_id': instance.companyId,
      'title': instance.title,
      'description': instance.description,
    };
