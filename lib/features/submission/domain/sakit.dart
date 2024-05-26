// ignore_for_file: invalid_annotation_target
import 'dart:convert';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
// import 'package:meraih_mobile/features/submission/domain/izin.dart';

part 'sakit.freezed.dart';
part 'sakit.g.dart';

class FileConverter implements JsonConverter<File, String> {
  const FileConverter();

  @override
  File fromJson(String json) {
    // Convert the JSON string back to a File object
    return File(json);
  }

  @override
  String toJson(File object) {
    // Convert the File object to its path string
    return object.path;
  }
}

@freezed
class SakitRequest with _$SakitRequest {
  factory SakitRequest(
      {@JsonKey(name: 'from') required String from,
      @JsonKey(name: "permission_reason") required String permissionReason,
      @JsonKey(name: 'to') required String to,
      @FileConverter()
      @JsonKey(name: 'sick_file')
      required File sickFile}) = _SakitRequest;

  factory SakitRequest.fromJson(Map<String, dynamic> json) =>
      _$SakitRequestFromJson(json);
}

@freezed
class SakitResponse with _$SakitResponse {
  factory SakitResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SakitData? data}) = _SakitResponse;

  factory SakitResponse.fromJson(Map<String, dynamic> json) =>
      _$SakitResponseFromJson(json);
}

@freezed
class SakitData with _$SakitData {
  factory SakitData({
    @JsonKey(name: 'from') required String? from,
    @JsonKey(name: 'to') required String? to,
    @JsonKey(name: 'permission_reason') required String? permissionReason,
    @JsonKey(name: 'type') required String? type,
  }) = _SakitData;

  factory SakitData.fromJson(Map<String, dynamic> json) =>
      _$SakitDataFromJson(json);
}
