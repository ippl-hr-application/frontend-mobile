// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgetpasswordRequest _$ForgetpasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ForgetpasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ForgetpasswordRequest {
  @JsonKey(name: 'employee_id')
  String get employeeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetpasswordRequestCopyWith<ForgetpasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetpasswordRequestCopyWith<$Res> {
  factory $ForgetpasswordRequestCopyWith(ForgetpasswordRequest value,
          $Res Function(ForgetpasswordRequest) then) =
      _$ForgetpasswordRequestCopyWithImpl<$Res, ForgetpasswordRequest>;
  @useResult
  $Res call({@JsonKey(name: 'employee_id') String employeeId});
}

/// @nodoc
class _$ForgetpasswordRequestCopyWithImpl<$Res,
        $Val extends ForgetpasswordRequest>
    implements $ForgetpasswordRequestCopyWith<$Res> {
  _$ForgetpasswordRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$ForgetpasswordRequestImplCopyWith<$Res>
    implements $ForgetpasswordRequestCopyWith<$Res> {
  factory _$$ForgetpasswordRequestImplCopyWith(
          _$ForgetpasswordRequestImpl value,
          $Res Function(_$ForgetpasswordRequestImpl) then) =
      __$$ForgetpasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'employee_id') String employeeId});
}

/// @nodoc
class __$$ForgetpasswordRequestImplCopyWithImpl<$Res>
    extends _$ForgetpasswordRequestCopyWithImpl<$Res,
        _$ForgetpasswordRequestImpl>
    implements _$$ForgetpasswordRequestImplCopyWith<$Res> {
  __$$ForgetpasswordRequestImplCopyWithImpl(_$ForgetpasswordRequestImpl _value,
      $Res Function(_$ForgetpasswordRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$ForgetpasswordRequestImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetpasswordRequestImpl implements _ForgetpasswordRequest {
  _$ForgetpasswordRequestImpl(
      {@JsonKey(name: 'employee_id') required this.employeeId});

  factory _$ForgetpasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetpasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: 'employee_id')
  final String employeeId;

  @override
  String toString() {
    return 'ForgetpasswordRequest(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetpasswordRequestImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetpasswordRequestImplCopyWith<_$ForgetpasswordRequestImpl>
      get copyWith => __$$ForgetpasswordRequestImplCopyWithImpl<
          _$ForgetpasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetpasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ForgetpasswordRequest implements ForgetpasswordRequest {
  factory _ForgetpasswordRequest(
          {@JsonKey(name: 'employee_id') required final String employeeId}) =
      _$ForgetpasswordRequestImpl;

  factory _ForgetpasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ForgetpasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: 'employee_id')
  String get employeeId;
  @override
  @JsonKey(ignore: true)
  _$$ForgetpasswordRequestImplCopyWith<_$ForgetpasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ForgetpasswordResponse _$ForgetpasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ForgetpasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgetpasswordResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetpasswordResponseCopyWith<ForgetpasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetpasswordResponseCopyWith<$Res> {
  factory $ForgetpasswordResponseCopyWith(ForgetpasswordResponse value,
          $Res Function(ForgetpasswordResponse) then) =
      _$ForgetpasswordResponseCopyWithImpl<$Res, ForgetpasswordResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ForgetpasswordResponseCopyWithImpl<$Res,
        $Val extends ForgetpasswordResponse>
    implements $ForgetpasswordResponseCopyWith<$Res> {
  _$ForgetpasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetpasswordResponseImplCopyWith<$Res>
    implements $ForgetpasswordResponseCopyWith<$Res> {
  factory _$$ForgetpasswordResponseImplCopyWith(
          _$ForgetpasswordResponseImpl value,
          $Res Function(_$ForgetpasswordResponseImpl) then) =
      __$$ForgetpasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ForgetpasswordResponseImplCopyWithImpl<$Res>
    extends _$ForgetpasswordResponseCopyWithImpl<$Res,
        _$ForgetpasswordResponseImpl>
    implements _$$ForgetpasswordResponseImplCopyWith<$Res> {
  __$$ForgetpasswordResponseImplCopyWithImpl(
      _$ForgetpasswordResponseImpl _value,
      $Res Function(_$ForgetpasswordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ForgetpasswordResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetpasswordResponseImpl implements _ForgetpasswordResponse {
  _$ForgetpasswordResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message});

  factory _$ForgetpasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetpasswordResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ForgetpasswordResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetpasswordResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetpasswordResponseImplCopyWith<_$ForgetpasswordResponseImpl>
      get copyWith => __$$ForgetpasswordResponseImplCopyWithImpl<
          _$ForgetpasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetpasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgetpasswordResponse implements ForgetpasswordResponse {
  factory _ForgetpasswordResponse(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message}) =
      _$ForgetpasswordResponseImpl;

  factory _ForgetpasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ForgetpasswordResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ForgetpasswordResponseImplCopyWith<_$ForgetpasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
