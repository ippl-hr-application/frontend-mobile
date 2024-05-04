import 'package:dio/dio.dart';

class ApiException {
  List<String> getExceptionMessage(DioException e) {
    switch (e.type) {
      case DioExceptionType.badResponse:
        return ["Bad Response", "Check Api url and try again"];
      case DioExceptionType.connectionError:
        return ["Connection Error", "Check your internet connection"];
      case DioExceptionType.connectionTimeout:
        return ["Connection Timeout", "Check your internet connection"];
      case DioExceptionType.cancel:
        return [
          "Request Cancelled",
          "Check API url or parameters and try again"
        ];

      case DioExceptionType.sendTimeout:
        return ["Send Timeout", "Check your internet connection"];
      case DioExceptionType.receiveTimeout:
        return ["Receive Timeout", "Check your internet connection"];
      case DioExceptionType.badCertificate:
        return ["Bad Certificate", "Check your internet connection"];
      case DioExceptionType.unknown:
        return ["Unknown Error", "Check your internet connection"];
    }
  }
}
