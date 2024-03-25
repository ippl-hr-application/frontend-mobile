// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'izin_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _IzinRepository implements IzinRepository {
  _IzinRepository(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://2399-36-85-39-96.ngrok-free.app';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<IzinResponse> postIzin(
    String from,
    String permissionReason,
    File permissionFile,
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
      'permission_reason',
      permissionReason,
    ));
    _data.files.add(MapEntry(
      'permission_file',
      MultipartFile.fromFileSync(
        permissionFile.path,
        filename: permissionFile.path.split(Platform.pathSeparator).last,
      ),
    ));
    _data.fields.add(MapEntry(
      'to',
      to,
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<IzinResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/submission/permission',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = IzinResponse.fromJson(_result.data!);
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
