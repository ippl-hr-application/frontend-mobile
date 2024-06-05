// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'changepassword.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangepasswordRequest _$ChangepasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ChangepasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangepasswordRequest {
  @JsonKey(name: 'old_password')
  String get old_password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirm_password')
  String get confirm_password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangepasswordRequestCopyWith<ChangepasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangepasswordRequestCopyWith<$Res> {
  factory $ChangepasswordRequestCopyWith(ChangepasswordRequest value,
          $Res Function(ChangepasswordRequest) then) =
      _$ChangepasswordRequestCopyWithImpl<$Res, ChangepasswordRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'old_password') String old_password,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'confirm_password') String confirm_password});
}

/// @nodoc
class _$ChangepasswordRequestCopyWithImpl<$Res,
        $Val extends ChangepasswordRequest>
    implements $ChangepasswordRequestCopyWith<$Res> {
  _$ChangepasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? old_password = null,
    Object? password = null,
    Object? confirm_password = null,
  }) {
    return _then(_value.copyWith(
      old_password: null == old_password
          ? _value.old_password
          : old_password // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirm_password: null == confirm_password
          ? _value.confirm_password
          : confirm_password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangepasswordRequestImplCopyWith<$Res>
    implements $ChangepasswordRequestCopyWith<$Res> {
  factory _$$ChangepasswordRequestImplCopyWith(
          _$ChangepasswordRequestImpl value,
          $Res Function(_$ChangepasswordRequestImpl) then) =
      __$$ChangepasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'old_password') String old_password,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'confirm_password') String confirm_password});
}

/// @nodoc
class __$$ChangepasswordRequestImplCopyWithImpl<$Res>
    extends _$ChangepasswordRequestCopyWithImpl<$Res,
        _$ChangepasswordRequestImpl>
    implements _$$ChangepasswordRequestImplCopyWith<$Res> {
  __$$ChangepasswordRequestImplCopyWithImpl(_$ChangepasswordRequestImpl _value,
      $Res Function(_$ChangepasswordRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? old_password = null,
    Object? password = null,
    Object? confirm_password = null,
  }) {
    return _then(_$ChangepasswordRequestImpl(
      old_password: null == old_password
          ? _value.old_password
          : old_password // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirm_password: null == confirm_password
          ? _value.confirm_password
          : confirm_password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangepasswordRequestImpl implements _ChangepasswordRequest {
  _$ChangepasswordRequestImpl(
      {@JsonKey(name: 'old_password') required this.old_password,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'confirm_password') required this.confirm_password});

  factory _$ChangepasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangepasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: 'old_password')
  final String old_password;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'confirm_password')
  final String confirm_password;

  @override
  String toString() {
    return 'ChangepasswordRequest(old_password: $old_password, password: $password, confirm_password: $confirm_password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangepasswordRequestImpl &&
            (identical(other.old_password, old_password) ||
                other.old_password == old_password) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirm_password, confirm_password) ||
                other.confirm_password == confirm_password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, old_password, password, confirm_password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangepasswordRequestImplCopyWith<_$ChangepasswordRequestImpl>
      get copyWith => __$$ChangepasswordRequestImplCopyWithImpl<
          _$ChangepasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangepasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangepasswordRequest implements ChangepasswordRequest {
  factory _ChangepasswordRequest(
      {@JsonKey(name: 'old_password') required final String old_password,
      @JsonKey(name: 'password') required final String password,
      @JsonKey(name: 'confirm_password')
      required final String confirm_password}) = _$ChangepasswordRequestImpl;

  factory _ChangepasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ChangepasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: 'old_password')
  String get old_password;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'confirm_password')
  String get confirm_password;
  @override
  @JsonKey(ignore: true)
  _$$ChangepasswordRequestImplCopyWith<_$ChangepasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChangepasswordResponse _$ChangepasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ChangepasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ChangepasswordResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ChangepasswordData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangepasswordResponseCopyWith<ChangepasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangepasswordResponseCopyWith<$Res> {
  factory $ChangepasswordResponseCopyWith(ChangepasswordResponse value,
          $Res Function(ChangepasswordResponse) then) =
      _$ChangepasswordResponseCopyWithImpl<$Res, ChangepasswordResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ChangepasswordData? data});

  $ChangepasswordDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChangepasswordResponseCopyWithImpl<$Res,
        $Val extends ChangepasswordResponse>
    implements $ChangepasswordResponseCopyWith<$Res> {
  _$ChangepasswordResponseCopyWithImpl(this._value, this._then);

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
              as ChangepasswordData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChangepasswordDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ChangepasswordDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangepasswordResponseImplCopyWith<$Res>
    implements $ChangepasswordResponseCopyWith<$Res> {
  factory _$$ChangepasswordResponseImplCopyWith(
          _$ChangepasswordResponseImpl value,
          $Res Function(_$ChangepasswordResponseImpl) then) =
      __$$ChangepasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ChangepasswordData? data});

  @override
  $ChangepasswordDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChangepasswordResponseImplCopyWithImpl<$Res>
    extends _$ChangepasswordResponseCopyWithImpl<$Res,
        _$ChangepasswordResponseImpl>
    implements _$$ChangepasswordResponseImplCopyWith<$Res> {
  __$$ChangepasswordResponseImplCopyWithImpl(
      _$ChangepasswordResponseImpl _value,
      $Res Function(_$ChangepasswordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChangepasswordResponseImpl(
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
              as ChangepasswordData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangepasswordResponseImpl implements _ChangepasswordResponse {
  _$ChangepasswordResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$ChangepasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangepasswordResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final ChangepasswordData? data;

  @override
  String toString() {
    return 'ChangepasswordResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangepasswordResponseImpl &&
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
  _$$ChangepasswordResponseImplCopyWith<_$ChangepasswordResponseImpl>
      get copyWith => __$$ChangepasswordResponseImplCopyWithImpl<
          _$ChangepasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangepasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ChangepasswordResponse implements ChangepasswordResponse {
  factory _ChangepasswordResponse(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final ChangepasswordData? data}) =
      _$ChangepasswordResponseImpl;

  factory _ChangepasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ChangepasswordResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  ChangepasswordData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChangepasswordResponseImplCopyWith<_$ChangepasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChangepasswordData _$ChangepasswordDataFromJson(Map<String, dynamic> json) {
  return _ChangepasswordData.fromJson(json);
}

/// @nodoc
mixin _$ChangepasswordData {
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangepasswordDataCopyWith<ChangepasswordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangepasswordDataCopyWith<$Res> {
  factory $ChangepasswordDataCopyWith(
          ChangepasswordData value, $Res Function(ChangepasswordData) then) =
      _$ChangepasswordDataCopyWithImpl<$Res, ChangepasswordData>;
  @useResult
  $Res call({@JsonKey(name: 'token') String? token});
}

/// @nodoc
class _$ChangepasswordDataCopyWithImpl<$Res, $Val extends ChangepasswordData>
    implements $ChangepasswordDataCopyWith<$Res> {
  _$ChangepasswordDataCopyWithImpl(this._value, this._then);

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
abstract class _$$ChangepasswordDataImplCopyWith<$Res>
    implements $ChangepasswordDataCopyWith<$Res> {
  factory _$$ChangepasswordDataImplCopyWith(_$ChangepasswordDataImpl value,
          $Res Function(_$ChangepasswordDataImpl) then) =
      __$$ChangepasswordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String? token});
}

/// @nodoc
class __$$ChangepasswordDataImplCopyWithImpl<$Res>
    extends _$ChangepasswordDataCopyWithImpl<$Res, _$ChangepasswordDataImpl>
    implements _$$ChangepasswordDataImplCopyWith<$Res> {
  __$$ChangepasswordDataImplCopyWithImpl(_$ChangepasswordDataImpl _value,
      $Res Function(_$ChangepasswordDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$ChangepasswordDataImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangepasswordDataImpl implements _ChangepasswordData {
  _$ChangepasswordDataImpl({@JsonKey(name: 'token') this.token});

  factory _$ChangepasswordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangepasswordDataImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String? token;

  @override
  String toString() {
    return 'ChangepasswordData(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangepasswordDataImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangepasswordDataImplCopyWith<_$ChangepasswordDataImpl> get copyWith =>
      __$$ChangepasswordDataImplCopyWithImpl<_$ChangepasswordDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangepasswordDataImplToJson(
      this,
    );
  }
}

abstract class _ChangepasswordData implements ChangepasswordData {
  factory _ChangepasswordData({@JsonKey(name: 'token') final String? token}) =
      _$ChangepasswordDataImpl;

  factory _ChangepasswordData.fromJson(Map<String, dynamic> json) =
      _$ChangepasswordDataImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$ChangepasswordDataImplCopyWith<_$ChangepasswordDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
