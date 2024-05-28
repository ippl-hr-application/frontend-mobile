// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mutasi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MutasiRequest _$MutasiRequestFromJson(Map<String, dynamic> json) {
  return _MutasiRequest.fromJson(json);
}

/// @nodoc
mixin _$MutasiRequest {
  @JsonKey(name: 'mutation_reason')
  String get mutationReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_company_branch_id')
  String get currenCompanyBranchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_company_branch_id')
  String get targetCompanyBranchId => throw _privateConstructorUsedError;
  @FileConverter()
  @JsonKey(name: 'mutation_file')
  File get mutationFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MutasiRequestCopyWith<MutasiRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutasiRequestCopyWith<$Res> {
  factory $MutasiRequestCopyWith(
          MutasiRequest value, $Res Function(MutasiRequest) then) =
      _$MutasiRequestCopyWithImpl<$Res, MutasiRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mutation_reason') String mutationReason,
      @JsonKey(name: 'current_company_branch_id') String currenCompanyBranchId,
      @JsonKey(name: 'target_company_branch_id') String targetCompanyBranchId,
      @FileConverter() @JsonKey(name: 'mutation_file') File mutationFile});
}

/// @nodoc
class _$MutasiRequestCopyWithImpl<$Res, $Val extends MutasiRequest>
    implements $MutasiRequestCopyWith<$Res> {
  _$MutasiRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mutationReason = null,
    Object? currenCompanyBranchId = null,
    Object? targetCompanyBranchId = null,
    Object? mutationFile = null,
  }) {
    return _then(_value.copyWith(
      mutationReason: null == mutationReason
          ? _value.mutationReason
          : mutationReason // ignore: cast_nullable_to_non_nullable
              as String,
      currenCompanyBranchId: null == currenCompanyBranchId
          ? _value.currenCompanyBranchId
          : currenCompanyBranchId // ignore: cast_nullable_to_non_nullable
              as String,
      targetCompanyBranchId: null == targetCompanyBranchId
          ? _value.targetCompanyBranchId
          : targetCompanyBranchId // ignore: cast_nullable_to_non_nullable
              as String,
      mutationFile: null == mutationFile
          ? _value.mutationFile
          : mutationFile // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MutasiRequestImplCopyWith<$Res>
    implements $MutasiRequestCopyWith<$Res> {
  factory _$$MutasiRequestImplCopyWith(
          _$MutasiRequestImpl value, $Res Function(_$MutasiRequestImpl) then) =
      __$$MutasiRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mutation_reason') String mutationReason,
      @JsonKey(name: 'current_company_branch_id') String currenCompanyBranchId,
      @JsonKey(name: 'target_company_branch_id') String targetCompanyBranchId,
      @FileConverter() @JsonKey(name: 'mutation_file') File mutationFile});
}

/// @nodoc
class __$$MutasiRequestImplCopyWithImpl<$Res>
    extends _$MutasiRequestCopyWithImpl<$Res, _$MutasiRequestImpl>
    implements _$$MutasiRequestImplCopyWith<$Res> {
  __$$MutasiRequestImplCopyWithImpl(
      _$MutasiRequestImpl _value, $Res Function(_$MutasiRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mutationReason = null,
    Object? currenCompanyBranchId = null,
    Object? targetCompanyBranchId = null,
    Object? mutationFile = null,
  }) {
    return _then(_$MutasiRequestImpl(
      mutationReason: null == mutationReason
          ? _value.mutationReason
          : mutationReason // ignore: cast_nullable_to_non_nullable
              as String,
      currenCompanyBranchId: null == currenCompanyBranchId
          ? _value.currenCompanyBranchId
          : currenCompanyBranchId // ignore: cast_nullable_to_non_nullable
              as String,
      targetCompanyBranchId: null == targetCompanyBranchId
          ? _value.targetCompanyBranchId
          : targetCompanyBranchId // ignore: cast_nullable_to_non_nullable
              as String,
      mutationFile: null == mutationFile
          ? _value.mutationFile
          : mutationFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MutasiRequestImpl implements _MutasiRequest {
  _$MutasiRequestImpl(
      {@JsonKey(name: 'mutation_reason') required this.mutationReason,
      @JsonKey(name: 'current_company_branch_id')
      required this.currenCompanyBranchId,
      @JsonKey(name: 'target_company_branch_id')
      required this.targetCompanyBranchId,
      @FileConverter()
      @JsonKey(name: 'mutation_file')
      required this.mutationFile});

  factory _$MutasiRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MutasiRequestImplFromJson(json);

  @override
  @JsonKey(name: 'mutation_reason')
  final String mutationReason;
  @override
  @JsonKey(name: 'current_company_branch_id')
  final String currenCompanyBranchId;
  @override
  @JsonKey(name: 'target_company_branch_id')
  final String targetCompanyBranchId;
  @override
  @FileConverter()
  @JsonKey(name: 'mutation_file')
  final File mutationFile;

  @override
  String toString() {
    return 'MutasiRequest(mutationReason: $mutationReason, currenCompanyBranchId: $currenCompanyBranchId, targetCompanyBranchId: $targetCompanyBranchId, mutationFile: $mutationFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutasiRequestImpl &&
            (identical(other.mutationReason, mutationReason) ||
                other.mutationReason == mutationReason) &&
            (identical(other.currenCompanyBranchId, currenCompanyBranchId) ||
                other.currenCompanyBranchId == currenCompanyBranchId) &&
            (identical(other.targetCompanyBranchId, targetCompanyBranchId) ||
                other.targetCompanyBranchId == targetCompanyBranchId) &&
            (identical(other.mutationFile, mutationFile) ||
                other.mutationFile == mutationFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mutationReason,
      currenCompanyBranchId, targetCompanyBranchId, mutationFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MutasiRequestImplCopyWith<_$MutasiRequestImpl> get copyWith =>
      __$$MutasiRequestImplCopyWithImpl<_$MutasiRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MutasiRequestImplToJson(
      this,
    );
  }
}

abstract class _MutasiRequest implements MutasiRequest {
  factory _MutasiRequest(
      {@JsonKey(name: 'mutation_reason') required final String mutationReason,
      @JsonKey(name: 'current_company_branch_id')
      required final String currenCompanyBranchId,
      @JsonKey(name: 'target_company_branch_id')
      required final String targetCompanyBranchId,
      @FileConverter()
      @JsonKey(name: 'mutation_file')
      required final File mutationFile}) = _$MutasiRequestImpl;

  factory _MutasiRequest.fromJson(Map<String, dynamic> json) =
      _$MutasiRequestImpl.fromJson;

  @override
  @JsonKey(name: 'mutation_reason')
  String get mutationReason;
  @override
  @JsonKey(name: 'current_company_branch_id')
  String get currenCompanyBranchId;
  @override
  @JsonKey(name: 'target_company_branch_id')
  String get targetCompanyBranchId;
  @override
  @FileConverter()
  @JsonKey(name: 'mutation_file')
  File get mutationFile;
  @override
  @JsonKey(ignore: true)
  _$$MutasiRequestImplCopyWith<_$MutasiRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MutasiResponse _$MutasiResponseFromJson(Map<String, dynamic> json) {
  return _MutasiResponse.fromJson(json);
}

/// @nodoc
mixin _$MutasiResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataMutasi get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MutasiResponseCopyWith<MutasiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutasiResponseCopyWith<$Res> {
  factory $MutasiResponseCopyWith(
          MutasiResponse value, $Res Function(MutasiResponse) then) =
      _$MutasiResponseCopyWithImpl<$Res, MutasiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'data') DataMutasi data,
      @JsonKey(name: 'message') String message});

  $DataMutasiCopyWith<$Res> get data;
}

/// @nodoc
class _$MutasiResponseCopyWithImpl<$Res, $Val extends MutasiResponse>
    implements $MutasiResponseCopyWith<$Res> {
  _$MutasiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataMutasi,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataMutasiCopyWith<$Res> get data {
    return $DataMutasiCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MutasiResponseImplCopyWith<$Res>
    implements $MutasiResponseCopyWith<$Res> {
  factory _$$MutasiResponseImplCopyWith(_$MutasiResponseImpl value,
          $Res Function(_$MutasiResponseImpl) then) =
      __$$MutasiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'data') DataMutasi data,
      @JsonKey(name: 'message') String message});

  @override
  $DataMutasiCopyWith<$Res> get data;
}

/// @nodoc
class __$$MutasiResponseImplCopyWithImpl<$Res>
    extends _$MutasiResponseCopyWithImpl<$Res, _$MutasiResponseImpl>
    implements _$$MutasiResponseImplCopyWith<$Res> {
  __$$MutasiResponseImplCopyWithImpl(
      _$MutasiResponseImpl _value, $Res Function(_$MutasiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$MutasiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataMutasi,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MutasiResponseImpl implements _MutasiResponse {
  _$MutasiResponseImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'message') required this.message});

  factory _$MutasiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MutasiResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'data')
  final DataMutasi data;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'MutasiResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutasiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MutasiResponseImplCopyWith<_$MutasiResponseImpl> get copyWith =>
      __$$MutasiResponseImplCopyWithImpl<_$MutasiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MutasiResponseImplToJson(
      this,
    );
  }
}

abstract class _MutasiResponse implements MutasiResponse {
  factory _MutasiResponse(
          {@JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'data') required final DataMutasi data,
          @JsonKey(name: 'message') required final String message}) =
      _$MutasiResponseImpl;

  factory _MutasiResponse.fromJson(Map<String, dynamic> json) =
      _$MutasiResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'data')
  DataMutasi get data;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MutasiResponseImplCopyWith<_$MutasiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataMutasi _$DataMutasiFromJson(Map<String, dynamic> json) {
  return _DataMutasu.fromJson(json);
}

/// @nodoc
mixin _$DataMutasi {
  @JsonKey(name: 'mutation_reason')
  String get mutationReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataMutasiCopyWith<DataMutasi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataMutasiCopyWith<$Res> {
  factory $DataMutasiCopyWith(
          DataMutasi value, $Res Function(DataMutasi) then) =
      _$DataMutasiCopyWithImpl<$Res, DataMutasi>;
  @useResult
  $Res call({@JsonKey(name: 'mutation_reason') String mutationReason});
}

/// @nodoc
class _$DataMutasiCopyWithImpl<$Res, $Val extends DataMutasi>
    implements $DataMutasiCopyWith<$Res> {
  _$DataMutasiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mutationReason = null,
  }) {
    return _then(_value.copyWith(
      mutationReason: null == mutationReason
          ? _value.mutationReason
          : mutationReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataMutasuImplCopyWith<$Res>
    implements $DataMutasiCopyWith<$Res> {
  factory _$$DataMutasuImplCopyWith(
          _$DataMutasuImpl value, $Res Function(_$DataMutasuImpl) then) =
      __$$DataMutasuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mutation_reason') String mutationReason});
}

/// @nodoc
class __$$DataMutasuImplCopyWithImpl<$Res>
    extends _$DataMutasiCopyWithImpl<$Res, _$DataMutasuImpl>
    implements _$$DataMutasuImplCopyWith<$Res> {
  __$$DataMutasuImplCopyWithImpl(
      _$DataMutasuImpl _value, $Res Function(_$DataMutasuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mutationReason = null,
  }) {
    return _then(_$DataMutasuImpl(
      mutationReason: null == mutationReason
          ? _value.mutationReason
          : mutationReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataMutasuImpl implements _DataMutasu {
  _$DataMutasuImpl(
      {@JsonKey(name: 'mutation_reason') required this.mutationReason});

  factory _$DataMutasuImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataMutasuImplFromJson(json);

  @override
  @JsonKey(name: 'mutation_reason')
  final String mutationReason;

  @override
  String toString() {
    return 'DataMutasi(mutationReason: $mutationReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataMutasuImpl &&
            (identical(other.mutationReason, mutationReason) ||
                other.mutationReason == mutationReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mutationReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataMutasuImplCopyWith<_$DataMutasuImpl> get copyWith =>
      __$$DataMutasuImplCopyWithImpl<_$DataMutasuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataMutasuImplToJson(
      this,
    );
  }
}

abstract class _DataMutasu implements DataMutasi {
  factory _DataMutasu(
      {@JsonKey(name: 'mutation_reason')
      required final String mutationReason}) = _$DataMutasuImpl;

  factory _DataMutasu.fromJson(Map<String, dynamic> json) =
      _$DataMutasuImpl.fromJson;

  @override
  @JsonKey(name: 'mutation_reason')
  String get mutationReason;
  @override
  @JsonKey(ignore: true)
  _$$DataMutasuImplCopyWith<_$DataMutasuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
