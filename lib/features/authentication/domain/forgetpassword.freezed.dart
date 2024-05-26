// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgetpassword.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgetRequest _$ForgetRequestFromJson(Map<String, dynamic> json) {
  return _ForgetRequest.fromJson(json);
}

/// @nodoc
mixin _$ForgetRequest {
  @JsonKey(name: 'employee_id')
  String get employeeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetRequestCopyWith<ForgetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetRequestCopyWith<$Res> {
  factory $ForgetRequestCopyWith(
          ForgetRequest value, $Res Function(ForgetRequest) then) =
      _$ForgetRequestCopyWithImpl<$Res, ForgetRequest>;
  @useResult
  $Res call({@JsonKey(name: 'employee_id') String employeeId});
}

/// @nodoc
class _$ForgetRequestCopyWithImpl<$Res, $Val extends ForgetRequest>
    implements $ForgetRequestCopyWith<$Res> {
  _$ForgetRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_value.copyWith(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetRequestImplCopyWith<$Res>
    implements $ForgetRequestCopyWith<$Res> {
  factory _$$ForgetRequestImplCopyWith(
          _$ForgetRequestImpl value, $Res Function(_$ForgetRequestImpl) then) =
      __$$ForgetRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'employee_id') String employeeId});
}

/// @nodoc
class __$$ForgetRequestImplCopyWithImpl<$Res>
    extends _$ForgetRequestCopyWithImpl<$Res, _$ForgetRequestImpl>
    implements _$$ForgetRequestImplCopyWith<$Res> {
  __$$ForgetRequestImplCopyWithImpl(
      _$ForgetRequestImpl _value, $Res Function(_$ForgetRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$ForgetRequestImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetRequestImpl implements _ForgetRequest {
  _$ForgetRequestImpl({@JsonKey(name: 'employee_id') required this.employeeId});

  factory _$ForgetRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetRequestImplFromJson(json);

  @override
  @JsonKey(name: 'employee_id')
  final String employeeId;

  @override
  String toString() {
    return 'ForgetRequest(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetRequestImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetRequestImplCopyWith<_$ForgetRequestImpl> get copyWith =>
      __$$ForgetRequestImplCopyWithImpl<_$ForgetRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetRequestImplToJson(
      this,
    );
  }
}

abstract class _ForgetRequest implements ForgetRequest {
  factory _ForgetRequest(
          {@JsonKey(name: 'employee_id') required final String employeeId}) =
      _$ForgetRequestImpl;

  factory _ForgetRequest.fromJson(Map<String, dynamic> json) =
      _$ForgetRequestImpl.fromJson;

  @override
  @JsonKey(name: 'employee_id')
  String get employeeId;
  @override
  @JsonKey(ignore: true)
  _$$ForgetRequestImplCopyWith<_$ForgetRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForgetResponse _$ForgetResponseFromJson(Map<String, dynamic> json) {
  return _ForgetResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgetResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ForgetData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetResponseCopyWith<ForgetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetResponseCopyWith<$Res> {
  factory $ForgetResponseCopyWith(
          ForgetResponse value, $Res Function(ForgetResponse) then) =
      _$ForgetResponseCopyWithImpl<$Res, ForgetResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ForgetData? data});

  $ForgetDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ForgetResponseCopyWithImpl<$Res, $Val extends ForgetResponse>
    implements $ForgetResponseCopyWith<$Res> {
  _$ForgetResponseCopyWithImpl(this._value, this._then);

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
              as ForgetData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgetDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ForgetDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgetResponseImplCopyWith<$Res>
    implements $ForgetResponseCopyWith<$Res> {
  factory _$$ForgetResponseImplCopyWith(_$ForgetResponseImpl value,
          $Res Function(_$ForgetResponseImpl) then) =
      __$$ForgetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ForgetData? data});

  @override
  $ForgetDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ForgetResponseImplCopyWithImpl<$Res>
    extends _$ForgetResponseCopyWithImpl<$Res, _$ForgetResponseImpl>
    implements _$$ForgetResponseImplCopyWith<$Res> {
  __$$ForgetResponseImplCopyWithImpl(
      _$ForgetResponseImpl _value, $Res Function(_$ForgetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ForgetResponseImpl(
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
              as ForgetData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetResponseImpl implements _ForgetResponse {
  _$ForgetResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$ForgetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final ForgetData? data;

  @override
  String toString() {
    return 'ForgetResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetResponseImpl &&
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
  _$$ForgetResponseImplCopyWith<_$ForgetResponseImpl> get copyWith =>
      __$$ForgetResponseImplCopyWithImpl<_$ForgetResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgetResponse implements ForgetResponse {
  factory _ForgetResponse(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final ForgetData? data}) = _$ForgetResponseImpl;

  factory _ForgetResponse.fromJson(Map<String, dynamic> json) =
      _$ForgetResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  ForgetData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ForgetResponseImplCopyWith<_$ForgetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForgetData _$ForgetDataFromJson(Map<String, dynamic> json) {
  return _ForgetData.fromJson(json);
}

/// @nodoc
mixin _$ForgetData {
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetDataCopyWith<ForgetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetDataCopyWith<$Res> {
  factory $ForgetDataCopyWith(
          ForgetData value, $Res Function(ForgetData) then) =
      _$ForgetDataCopyWithImpl<$Res, ForgetData>;
  @useResult
  $Res call({@JsonKey(name: 'token') String? token});
}

/// @nodoc
class _$ForgetDataCopyWithImpl<$Res, $Val extends ForgetData>
    implements $ForgetDataCopyWith<$Res> {
  _$ForgetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetDataImplCopyWith<$Res>
    implements $ForgetDataCopyWith<$Res> {
  factory _$$ForgetDataImplCopyWith(
          _$ForgetDataImpl value, $Res Function(_$ForgetDataImpl) then) =
      __$$ForgetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String? token});
}

/// @nodoc
class __$$ForgetDataImplCopyWithImpl<$Res>
    extends _$ForgetDataCopyWithImpl<$Res, _$ForgetDataImpl>
    implements _$$ForgetDataImplCopyWith<$Res> {
  __$$ForgetDataImplCopyWithImpl(
      _$ForgetDataImpl _value, $Res Function(_$ForgetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$ForgetDataImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetDataImpl implements _ForgetData {
  _$ForgetDataImpl({@JsonKey(name: 'token') this.token});

  factory _$ForgetDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetDataImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String? token;

  @override
  String toString() {
    return 'ForgetData(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetDataImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetDataImplCopyWith<_$ForgetDataImpl> get copyWith =>
      __$$ForgetDataImplCopyWithImpl<_$ForgetDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetDataImplToJson(
      this,
    );
  }
}

abstract class _ForgetData implements ForgetData {
  factory _ForgetData({@JsonKey(name: 'token') final String? token}) =
      _$ForgetDataImpl;

  factory _ForgetData.fromJson(Map<String, dynamic> json) =
      _$ForgetDataImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$ForgetDataImplCopyWith<_$ForgetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
