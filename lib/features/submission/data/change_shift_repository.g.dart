// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_shift_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ShiftRepository implements ShiftRepository {
  _ShiftRepository(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://27.112.79.44';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ChangeShiftResponse> postChangeShift(
    String targetDate,
    String currentShift,
    String targetShift,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'target_date',
      targetDate,
    ));
    _data.fields.add(MapEntry(
      'current_shift_id',
      currentShift,
    ));
    _data.fields.add(MapEntry(
      'target_shift_id',
      targetShift,
    ));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChangeShiftResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/submission/sick',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ChangeShiftResponse.fromJson(_result.data!);
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
