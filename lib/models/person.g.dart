// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      position: json['position'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'address': instance.address,
      'position': instance.position,
      'status': instance.status,
    };
