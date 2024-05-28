// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attandance_submission_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AttandanceHistoryRepository implements AttandanceHistoryRepository {
  _AttandanceHistoryRepository(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://jzgp086z-3000.asse.devtunnels.ms/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AttandanceHistoryData> postAttandanceHistory(
    String attendanceId,
    String reason,
    File attendanceSubmissionFile,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'attendance_id',
      attendanceId,
    ));
    _data.fields.add(MapEntry(
      'reason',
      reason,
    ));
    _data.files.add(MapEntry(
      ' attendance_submission_file',
      MultipartFile.fromFileSync(
        attendanceSubmissionFile.path,
        filename:
            attendanceSubmissionFile.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AttandanceHistoryData>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/submission',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AttandanceHistoryData.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
