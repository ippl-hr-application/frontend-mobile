// ignore_for_file: invalid_annotation_target

// import 'dart:convert';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:retrofit/retrofit.dart';
part 'checkout.freezed.dart';
part 'checkout.g.dart';

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
class CheckoutRequest with _$CheckoutRequest {
  factory CheckoutRequest({
    @FileConverter()
    @JsonKey(name: 'attendance_file')
    required File attendance_file,
  }) = _CheckoutRequest;

  factory CheckoutRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckoutRequestFromJson(json);
}

@freezed
class CheckoutResponse with _$CheckoutResponse {
  factory CheckoutResponse(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') CheckoutData? data}) = _CheckoutResponse;

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseFromJson(json);
}

@freezed
class CheckoutData with _$CheckoutData {
  factory CheckoutData({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'time') String? time,
  }) = _CheckoutData;

  factory CheckoutData.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDataFromJson(json);
}