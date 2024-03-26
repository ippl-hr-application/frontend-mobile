// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuti_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CutiRepository implements CutiRepository {
  _CutiRepository(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://e1c5-36-85-39-96.ngrok-free.app';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CutiResponse> postCuti(
    String from,
    String leave_reason,
    String leave_type,
    File leave_file,
    String to,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'from',
      from,
    ));
    _data.fields.add(MapEntry(
      'leave_reason',
      leave_reason,
    ));
    _data.fields.add(MapEntry(
      'leave_type',
      leave_type,
    ));
    _data.files.add(MapEntry(
      'leave_file',
      MultipartFile.fromFileSync(
        leave_file.path,
        filename: leave_file.path.split(Platform.pathSeparator).last,
      ),
    ));
    _data.fields.add(MapEntry(
      'to',
      to,
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CutiResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/submission/leave',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = CutiResponse.fromJson(_result.data!);
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
