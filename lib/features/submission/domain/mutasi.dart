// ignore_for_file: invalid_annotation_target

import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mutasi.freezed.dart';
part 'mutasi.g.dart';

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
class MutasiRequest with _$MutasiRequest {
  factory MutasiRequest(
      {@JsonKey(name: 'mutation_reason') required String mutationReason,
      @JsonKey(name: 'current_company_branch_id')
      required String currenCompanyBranchId,
      @JsonKey(name: 'target_company_branch_id')
      required String targetCompanyBranchId,
      @FileConverter()
      @JsonKey(name: 'mutation_file')
      required File mutationFile}) = _MutasiRequest;

  factory MutasiRequest.fromJson(Map<String, dynamic> json) =>
      _$MutasiRequestFromJson(json);
}

@freezed
class MutasiResponse with _$MutasiResponse {
  factory MutasiResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'data') required DataMutasi data,
    @JsonKey(name: 'message') required String message,
  }) = _MutasiResponse;

  factory MutasiResponse.fromJson(Map<String, dynamic> json) =>
      _$MutasiResponseFromJson(json);
}

@freezed
class DataMutasi with _$DataMutasi {
  factory DataMutasi({
    @JsonKey(name: 'mutation_reason') required String mutationReason,
  }) = _DataMutasu;

  factory DataMutasi.fromJson(Map<String, dynamic> json) =>
      _$DataMutasiFromJson(json);
}
