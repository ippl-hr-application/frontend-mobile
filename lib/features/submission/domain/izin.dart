// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
part 'izin.freezed.dart';
part 'izin.g.dart';

@freezed
class IzinRequest with _$IzinRequest {
  factory IzinRequest({
    @JsonKey(name: 'to') required String to,
    @JsonKey(name: 'from') required String from,
    @JsonKey(name: 'permission_reason') required String permission_reason,
    @JsonKey(name: 'file_name') required String file_name,
    @JsonKey(name: 'file_size') required int file_size,
    @JsonKey(name: 'file_type') required String file_type,
    @JsonKey(name: 'file_url') required String file_url,
  }) = _IzinRequest;

  factory IzinRequest.fromJson(Map<String, dynamic> json) =>
      _$IzinRequestFromJson(json);
}

@freezed
class IzinResponse with _$IzinResponse {
  factory IzinResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') IzinData? data}) = _IzinResponse;

  factory IzinResponse.fromJson(Map<String, dynamic> json) =>
      _$IzinResponseFromJson(json);
}

@freezed
class IzinData with _$IzinData {
  factory IzinData({
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'permission_reason') String? permission_reason,
    @JsonKey(name: 'type') String? type,
  }) = _IzinData;

  factory IzinData.fromJson(Map<String, dynamic> json) =>
      _$IzinDataFromJson(json);
}
