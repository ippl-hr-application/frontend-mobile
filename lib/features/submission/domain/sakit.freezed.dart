// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sakit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SakitRequest _$SakitRequestFromJson(Map<String, dynamic> json) {
  return _SakitRequest.fromJson(json);
}

/// @nodoc
mixin _$SakitRequest {
  @JsonKey(name: 'from')
  String get from => throw _privateConstructorUsedError;
  @JsonKey(name: "permission_reason")
  String get permissionReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String get to => throw _privateConstructorUsedError;
  @FileConverter()
  @JsonKey(name: 'sick_file')
  File get sickFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SakitRequestCopyWith<SakitRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SakitRequestCopyWith<$Res> {
  factory $SakitRequestCopyWith(
          SakitRequest value, $Res Function(SakitRequest) then) =
      _$SakitRequestCopyWithImpl<$Res, SakitRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String from,
      @JsonKey(name: "permission_reason") String permissionReason,
      @JsonKey(name: 'to') String to,
      @FileConverter() @JsonKey(name: 'sick_file') File sickFile});
}

/// @nodoc
class _$SakitRequestCopyWithImpl<$Res, $Val extends SakitRequest>
    implements $SakitRequestCopyWith<$Res> {
  _$SakitRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? permissionReason = null,
    Object? to = null,
    Object? sickFile = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      permissionReason: null == permissionReason
          ? _value.permissionReason
          : permissionReason // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      sickFile: null == sickFile
          ? _value.sickFile
          : sickFile // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SakitRequestImplCopyWith<$Res>
    implements $SakitRequestCopyWith<$Res> {
  factory _$$SakitRequestImplCopyWith(
          _$SakitRequestImpl value, $Res Function(_$SakitRequestImpl) then) =
      __$$SakitRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String from,
      @JsonKey(name: "permission_reason") String permissionReason,
      @JsonKey(name: 'to') String to,
      @FileConverter() @JsonKey(name: 'sick_file') File sickFile});
}

/// @nodoc
class __$$SakitRequestImplCopyWithImpl<$Res>
    extends _$SakitRequestCopyWithImpl<$Res, _$SakitRequestImpl>
    implements _$$SakitRequestImplCopyWith<$Res> {
  __$$SakitRequestImplCopyWithImpl(
      _$SakitRequestImpl _value, $Res Function(_$SakitRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? permissionReason = null,
    Object? to = null,
    Object? sickFile = null,
  }) {
    return _then(_$SakitRequestImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      permissionReason: null == permissionReason
          ? _value.permissionReason
          : permissionReason // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      sickFile: null == sickFile
          ? _value.sickFile
          : sickFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SakitRequestImpl implements _SakitRequest {
  _$SakitRequestImpl(
      {@JsonKey(name: 'from') required this.from,
      @JsonKey(name: "permission_reason") required this.permissionReason,
      @JsonKey(name: 'to') required this.to,
      @FileConverter() @JsonKey(name: 'sick_file') required this.sickFile});

  factory _$SakitRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SakitRequestImplFromJson(json);

  @override
  @JsonKey(name: 'from')
  final String from;
  @override
  @JsonKey(name: "permission_reason")
  final String permissionReason;
  @override
  @JsonKey(name: 'to')
  final String to;
  @override
  @FileConverter()
  @JsonKey(name: 'sick_file')
  final File sickFile;

  @override
  String toString() {
    return 'SakitRequest(from: $from, permissionReason: $permissionReason, to: $to, sickFile: $sickFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SakitRequestImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.permissionReason, permissionReason) ||
                other.permissionReason == permissionReason) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.sickFile, sickFile) ||
                other.sickFile == sickFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, permissionReason, to, sickFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SakitRequestImplCopyWith<_$SakitRequestImpl> get copyWith =>
      __$$SakitRequestImplCopyWithImpl<_$SakitRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SakitRequestImplToJson(
      this,
    );
  }
}

abstract class _SakitRequest implements SakitRequest {
  factory _SakitRequest(
      {@JsonKey(name: 'from') required final String from,
      @JsonKey(name: "permission_reason")
      required final String permissionReason,
      @JsonKey(name: 'to') required final String to,
      @FileConverter()
      @JsonKey(name: 'sick_file')
      required final File sickFile}) = _$SakitRequestImpl;

  factory _SakitRequest.fromJson(Map<String, dynamic> json) =
      _$SakitRequestImpl.fromJson;

  @override
  @JsonKey(name: 'from')
  String get from;
  @override
  @JsonKey(name: "permission_reason")
  String get permissionReason;
  @override
  @JsonKey(name: 'to')
  String get to;
  @override
  @FileConverter()
  @JsonKey(name: 'sick_file')
  File get sickFile;
  @override
  @JsonKey(ignore: true)
  _$$SakitRequestImplCopyWith<_$SakitRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SakitResponse _$SakitResponseFromJson(Map<String, dynamic> json) {
  return _SakitResponse.fromJson(json);
}

/// @nodoc
mixin _$SakitResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SakitData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SakitResponseCopyWith<SakitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SakitResponseCopyWith<$Res> {
  factory $SakitResponseCopyWith(
          SakitResponse value, $Res Function(SakitResponse) then) =
      _$SakitResponseCopyWithImpl<$Res, SakitResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SakitData? data});

  $SakitDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SakitResponseCopyWithImpl<$Res, $Val extends SakitResponse>
    implements $SakitResponseCopyWith<$Res> {
  _$SakitResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SakitData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SakitDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SakitDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SakitResponseImplCopyWith<$Res>
    implements $SakitResponseCopyWith<$Res> {
  factory _$$SakitResponseImplCopyWith(
          _$SakitResponseImpl value, $Res Function(_$SakitResponseImpl) then) =
      __$$SakitResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SakitData? data});

  @override
  $SakitDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SakitResponseImplCopyWithImpl<$Res>
    extends _$SakitResponseCopyWithImpl<$Res, _$SakitResponseImpl>
    implements _$$SakitResponseImplCopyWith<$Res> {
  __$$SakitResponseImplCopyWithImpl(
      _$SakitResponseImpl _value, $Res Function(_$SakitResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SakitResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SakitData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SakitResponseImpl implements _SakitResponse {
  _$SakitResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$SakitResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SakitResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final SakitData? data;

  @override
  String toString() {
    return 'SakitResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SakitResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SakitResponseImplCopyWith<_$SakitResponseImpl> get copyWith =>
      __$$SakitResponseImplCopyWithImpl<_$SakitResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SakitResponseImplToJson(
      this,
    );
  }
}

abstract class _SakitResponse implements SakitResponse {
  factory _SakitResponse(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final SakitData? data}) = _$SakitResponseImpl;

  factory _SakitResponse.fromJson(Map<String, dynamic> json) =
      _$SakitResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  SakitData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SakitResponseImplCopyWith<_$SakitResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SakitData _$SakitDataFromJson(Map<String, dynamic> json) {
  return _SakitData.fromJson(json);
}

/// @nodoc
mixin _$SakitData {
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'permission_reason')
  String? get permissionReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SakitDataCopyWith<SakitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SakitDataCopyWith<$Res> {
  factory $SakitDataCopyWith(SakitData value, $Res Function(SakitData) then) =
      _$SakitDataCopyWithImpl<$Res, SakitData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'permission_reason') String? permissionReason,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class _$SakitDataCopyWithImpl<$Res, $Val extends SakitData>
    implements $SakitDataCopyWith<$Res> {
  _$SakitDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? permissionReason = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionReason: freezed == permissionReason
          ? _value.permissionReason
          : permissionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SakitDataImplCopyWith<$Res>
    implements $SakitDataCopyWith<$Res> {
  factory _$$SakitDataImplCopyWith(
          _$SakitDataImpl value, $Res Function(_$SakitDataImpl) then) =
      __$$SakitDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'permission_reason') String? permissionReason,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class __$$SakitDataImplCopyWithImpl<$Res>
    extends _$SakitDataCopyWithImpl<$Res, _$SakitDataImpl>
    implements _$$SakitDataImplCopyWith<$Res> {
  __$$SakitDataImplCopyWithImpl(
      _$SakitDataImpl _value, $Res Function(_$SakitDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? permissionReason = freezed,
    Object? type = freezed,
  }) {
    return _then(_$SakitDataImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionReason: freezed == permissionReason
          ? _value.permissionReason
          : permissionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SakitDataImpl implements _SakitData {
  _$SakitDataImpl(
      {@JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'to') required this.to,
      @JsonKey(name: 'permission_reason') required this.permissionReason,
      @JsonKey(name: 'type') required this.type});

  factory _$SakitDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SakitDataImplFromJson(json);

  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'to')
  final String? to;
  @override
  @JsonKey(name: 'permission_reason')
  final String? permissionReason;
  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  String toString() {
    return 'SakitData(from: $from, to: $to, permissionReason: $permissionReason, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SakitDataImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.permissionReason, permissionReason) ||
                other.permissionReason == permissionReason) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, to, permissionReason, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SakitDataImplCopyWith<_$SakitDataImpl> get copyWith =>
      __$$SakitDataImplCopyWithImpl<_$SakitDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SakitDataImplToJson(
      this,
    );
  }
}

abstract class _SakitData implements SakitData {
  factory _SakitData(
      {@JsonKey(name: 'from') required final String? from,
      @JsonKey(name: 'to') required final String? to,
      @JsonKey(name: 'permission_reason')
      required final String? permissionReason,
      @JsonKey(name: 'type') required final String? type}) = _$SakitDataImpl;

  factory _SakitData.fromJson(Map<String, dynamic> json) =
      _$SakitDataImpl.fromJson;

  @override
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'to')
  String? get to;
  @override
  @JsonKey(name: 'permission_reason')
  String? get permissionReason;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$SakitDataImplCopyWith<_$SakitDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
