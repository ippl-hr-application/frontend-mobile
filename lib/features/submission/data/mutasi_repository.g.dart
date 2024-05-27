// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutasi_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _MutasiRepository implements MutasiRepository {
  _MutasiRepository(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://27.112.79.44/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MutasiResponse> postMutasi(
    String mutationReason,
    String currentCompanyBranchId,
    String targetCompanyBranchId,
    File mutationFile,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'mutation_reason',
      mutationReason,
    ));
    _data.fields.add(MapEntry(
      'current_company_branch_id',
      currentCompanyBranchId,
    ));
    _data.fields.add(MapEntry(
      'target_company_branch_id',
      targetCompanyBranchId,
    ));
    _data.files.add(MapEntry(
      'mutation_file',
      MultipartFile.fromFileSync(
        mutationFile.path,
        filename: mutationFile.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<MutasiResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/submission/mutation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = MutasiResponse.fromJson(_result.data!);
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
