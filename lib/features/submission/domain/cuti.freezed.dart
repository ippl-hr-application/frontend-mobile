// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cuti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CutiRequest _$CutiRequestFromJson(Map<String, dynamic> json) {
  return _CutiRequest.fromJson(json);
}

/// @nodoc
mixin _$CutiRequest {
  @JsonKey(name: 'to')
  String get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_reason')
  String get leaveReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_type')
  String get leaveType => throw _privateConstructorUsedError;
  @FileConverter()
  @JsonKey(name: 'leave_file')
  File get leave_file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CutiRequestCopyWith<CutiRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CutiRequestCopyWith<$Res> {
  factory $CutiRequestCopyWith(
          CutiRequest value, $Res Function(CutiRequest) then) =
      _$CutiRequestCopyWithImpl<$Res, CutiRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'to') String to,
      @JsonKey(name: 'from') String from,
      @JsonKey(name: 'leave_reason') String leaveReason,
      @JsonKey(name: 'leave_type') String leaveType,
      @FileConverter() @JsonKey(name: 'leave_file') File leave_file});
}

/// @nodoc
class _$CutiRequestCopyWithImpl<$Res, $Val extends CutiRequest>
    implements $CutiRequestCopyWith<$Res> {
  _$CutiRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? from = null,
    Object? leaveReason = null,
    Object? leaveType = null,
    Object? leave_file = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      leaveReason: null == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      leave_file: null == leave_file
          ? _value.leave_file
          : leave_file // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CutiRequestImplCopyWith<$Res>
    implements $CutiRequestCopyWith<$Res> {
  factory _$$CutiRequestImplCopyWith(
          _$CutiRequestImpl value, $Res Function(_$CutiRequestImpl) then) =
      __$$CutiRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'to') String to,
      @JsonKey(name: 'from') String from,
      @JsonKey(name: 'leave_reason') String leaveReason,
      @JsonKey(name: 'leave_type') String leaveType,
      @FileConverter() @JsonKey(name: 'leave_file') File leave_file});
}

/// @nodoc
class __$$CutiRequestImplCopyWithImpl<$Res>
    extends _$CutiRequestCopyWithImpl<$Res, _$CutiRequestImpl>
    implements _$$CutiRequestImplCopyWith<$Res> {
  __$$CutiRequestImplCopyWithImpl(
      _$CutiRequestImpl _value, $Res Function(_$CutiRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? from = null,
    Object? leaveReason = null,
    Object? leaveType = null,
    Object? leave_file = null,
  }) {
    return _then(_$CutiRequestImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      leaveReason: null == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      leave_file: null == leave_file
          ? _value.leave_file
          : leave_file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CutiRequestImpl implements _CutiRequest {
  _$CutiRequestImpl(
      {@JsonKey(name: 'to') required this.to,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'leave_reason') required this.leaveReason,
      @JsonKey(name: 'leave_type') required this.leaveType,
      @FileConverter() @JsonKey(name: 'leave_file') required this.leave_file});

  factory _$CutiRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CutiRequestImplFromJson(json);

  @override
  @JsonKey(name: 'to')
  final String to;
  @override
  @JsonKey(name: 'from')
  final String from;
  @override
  @JsonKey(name: 'leave_reason')
  final String leaveReason;
  @override
  @JsonKey(name: 'leave_type')
  final String leaveType;
  @override
  @FileConverter()
  @JsonKey(name: 'leave_file')
  final File leave_file;

  @override
  String toString() {
    return 'CutiRequest(to: $to, from: $from, leaveReason: $leaveReason, leaveType: $leaveType, leave_file: $leave_file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CutiRequestImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.leaveReason, leaveReason) ||
                other.leaveReason == leaveReason) &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.leave_file, leave_file) ||
                other.leave_file == leave_file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, to, from, leaveReason, leaveType, leave_file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CutiRequestImplCopyWith<_$CutiRequestImpl> get copyWith =>
      __$$CutiRequestImplCopyWithImpl<_$CutiRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CutiRequestImplToJson(
      this,
    );
  }
}

abstract class _CutiRequest implements CutiRequest {
  factory _CutiRequest(
      {@JsonKey(name: 'to') required final String to,
      @JsonKey(name: 'from') required final String from,
      @JsonKey(name: 'leave_reason') required final String leaveReason,
      @JsonKey(name: 'leave_type') required final String leaveType,
      @FileConverter()
      @JsonKey(name: 'leave_file')
      required final File leave_file}) = _$CutiRequestImpl;

  factory _CutiRequest.fromJson(Map<String, dynamic> json) =
      _$CutiRequestImpl.fromJson;

  @override
  @JsonKey(name: 'to')
  String get to;
  @override
  @JsonKey(name: 'from')
  String get from;
  @override
  @JsonKey(name: 'leave_reason')
  String get leaveReason;
  @override
  @JsonKey(name: 'leave_type')
  String get leaveType;
  @override
  @FileConverter()
  @JsonKey(name: 'leave_file')
  File get leave_file;
  @override
  @JsonKey(ignore: true)
  _$$CutiRequestImplCopyWith<_$CutiRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CutiResponse _$CutiResponseFromJson(Map<String, dynamic> json) {
  return _CutiResponse.fromJson(json);
}

/// @nodoc
mixin _$CutiResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CutiData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CutiResponseCopyWith<CutiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CutiResponseCopyWith<$Res> {
  factory $CutiResponseCopyWith(
          CutiResponse value, $Res Function(CutiResponse) then) =
      _$CutiResponseCopyWithImpl<$Res, CutiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CutiData? data});

  $CutiDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CutiResponseCopyWithImpl<$Res, $Val extends CutiResponse>
    implements $CutiResponseCopyWith<$Res> {
  _$CutiResponseCopyWithImpl(this._value, this._then);

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
              as CutiData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CutiDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CutiDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CutiResponseImplCopyWith<$Res>
    implements $CutiResponseCopyWith<$Res> {
  factory _$$CutiResponseImplCopyWith(
          _$CutiResponseImpl value, $Res Function(_$CutiResponseImpl) then) =
      __$$CutiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CutiData? data});

  @override
  $CutiDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CutiResponseImplCopyWithImpl<$Res>
    extends _$CutiResponseCopyWithImpl<$Res, _$CutiResponseImpl>
    implements _$$CutiResponseImplCopyWith<$Res> {
  __$$CutiResponseImplCopyWithImpl(
      _$CutiResponseImpl _value, $Res Function(_$CutiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CutiResponseImpl(
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
              as CutiData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CutiResponseImpl implements _CutiResponse {
  _$CutiResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$CutiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CutiResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final CutiData? data;

  @override
  String toString() {
    return 'CutiResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CutiResponseImpl &&
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
  _$$CutiResponseImplCopyWith<_$CutiResponseImpl> get copyWith =>
      __$$CutiResponseImplCopyWithImpl<_$CutiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CutiResponseImplToJson(
      this,
    );
  }
}

abstract class _CutiResponse implements CutiResponse {
  factory _CutiResponse(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final CutiData? data}) = _$CutiResponseImpl;

  factory _CutiResponse.fromJson(Map<String, dynamic> json) =
      _$CutiResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  CutiData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CutiResponseImplCopyWith<_$CutiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CutiData _$CutiDataFromJson(Map<String, dynamic> json) {
  return _CutiData.fromJson(json);
}

/// @nodoc
mixin _$CutiData {
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_reason')
  String? get leaveReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_type')
  String? get leaveType => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CutiDataCopyWith<CutiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CutiDataCopyWith<$Res> {
  factory $CutiDataCopyWith(CutiData value, $Res Function(CutiData) then) =
      _$CutiDataCopyWithImpl<$Res, CutiData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String? from,
      @JsonKey(name: 'leave_reason') String? leaveReason,
      @JsonKey(name: 'leave_type') String? leaveType,
      @JsonKey(name: 'to') String? to});
}

/// @nodoc
class _$CutiDataCopyWithImpl<$Res, $Val extends CutiData>
    implements $CutiDataCopyWith<$Res> {
  _$CutiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? leaveReason = freezed,
    Object? leaveType = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveReason: freezed == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CutiDataImplCopyWith<$Res>
    implements $CutiDataCopyWith<$Res> {
  factory _$$CutiDataImplCopyWith(
          _$CutiDataImpl value, $Res Function(_$CutiDataImpl) then) =
      __$$CutiDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String? from,
      @JsonKey(name: 'leave_reason') String? leaveReason,
      @JsonKey(name: 'leave_type') String? leaveType,
      @JsonKey(name: 'to') String? to});
}

/// @nodoc
class __$$CutiDataImplCopyWithImpl<$Res>
    extends _$CutiDataCopyWithImpl<$Res, _$CutiDataImpl>
    implements _$$CutiDataImplCopyWith<$Res> {
  __$$CutiDataImplCopyWithImpl(
      _$CutiDataImpl _value, $Res Function(_$CutiDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? leaveReason = freezed,
    Object? leaveType = freezed,
    Object? to = freezed,
  }) {
    return _then(_$CutiDataImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveReason: freezed == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CutiDataImpl implements _CutiData {
  _$CutiDataImpl(
      {@JsonKey(name: 'from') this.from,
      @JsonKey(name: 'leave_reason') this.leaveReason,
      @JsonKey(name: 'leave_type') this.leaveType,
      @JsonKey(name: 'to') this.to});

  factory _$CutiDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CutiDataImplFromJson(json);

  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'leave_reason')
  final String? leaveReason;
  @override
  @JsonKey(name: 'leave_type')
  final String? leaveType;
  @override
  @JsonKey(name: 'to')
  final String? to;

  @override
  String toString() {
    return 'CutiData(from: $from, leaveReason: $leaveReason, leaveType: $leaveType, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CutiDataImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.leaveReason, leaveReason) ||
                other.leaveReason == leaveReason) &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, leaveReason, leaveType, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CutiDataImplCopyWith<_$CutiDataImpl> get copyWith =>
      __$$CutiDataImplCopyWithImpl<_$CutiDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CutiDataImplToJson(
      this,
    );
  }
}

abstract class _CutiData implements CutiData {
  factory _CutiData(
      {@JsonKey(name: 'from') final String? from,
      @JsonKey(name: 'leave_reason') final String? leaveReason,
      @JsonKey(name: 'leave_type') final String? leaveType,
      @JsonKey(name: 'to') final String? to}) = _$CutiDataImpl;

  factory _CutiData.fromJson(Map<String, dynamic> json) =
      _$CutiDataImpl.fromJson;

  @override
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'leave_reason')
  String? get leaveReason;
  @override
  @JsonKey(name: 'leave_type')
  String? get leaveType;
  @override
  @JsonKey(name: 'to')
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$$CutiDataImplCopyWith<_$CutiDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
