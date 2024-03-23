// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResignRequest _$ResignRequestFromJson(Map<String, dynamic> json) {
  return _ResignRequest.fromJson(json);
}

/// @nodoc
mixin _$ResignRequest {
  @JsonKey(name: 'permission_reason')
  String get permission_reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'permission_file')
  String? get permission_file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResignRequestCopyWith<ResignRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResignRequestCopyWith<$Res> {
  factory $ResignRequestCopyWith(
          ResignRequest value, $Res Function(ResignRequest) then) =
      _$ResignRequestCopyWithImpl<$Res, ResignRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'permission_reason') String permission_reason,
      @JsonKey(name: 'permission_file') String? permission_file});
}

/// @nodoc
class _$ResignRequestCopyWithImpl<$Res, $Val extends ResignRequest>
    implements $ResignRequestCopyWith<$Res> {
  _$ResignRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permission_reason = null,
    Object? permission_file = freezed,
  }) {
    return _then(_value.copyWith(
      permission_reason: null == permission_reason
          ? _value.permission_reason
          : permission_reason // ignore: cast_nullable_to_non_nullable
              as String,
      permission_file: freezed == permission_file
          ? _value.permission_file
          : permission_file // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResignRequestImplCopyWith<$Res>
    implements $ResignRequestCopyWith<$Res> {
  factory _$$ResignRequestImplCopyWith(
          _$ResignRequestImpl value, $Res Function(_$ResignRequestImpl) then) =
      __$$ResignRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'permission_reason') String permission_reason,
      @JsonKey(name: 'permission_file') String? permission_file});
}

/// @nodoc
class __$$ResignRequestImplCopyWithImpl<$Res>
    extends _$ResignRequestCopyWithImpl<$Res, _$ResignRequestImpl>
    implements _$$ResignRequestImplCopyWith<$Res> {
  __$$ResignRequestImplCopyWithImpl(
      _$ResignRequestImpl _value, $Res Function(_$ResignRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permission_reason = null,
    Object? permission_file = freezed,
  }) {
    return _then(_$ResignRequestImpl(
      permission_reason: null == permission_reason
          ? _value.permission_reason
          : permission_reason // ignore: cast_nullable_to_non_nullable
              as String,
      permission_file: freezed == permission_file
          ? _value.permission_file
          : permission_file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResignRequestImpl implements _ResignRequest {
  _$ResignRequestImpl(
      {@JsonKey(name: 'permission_reason') required this.permission_reason,
      @JsonKey(name: 'permission_file') required this.permission_file});

  factory _$ResignRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResignRequestImplFromJson(json);

  @override
  @JsonKey(name: 'permission_reason')
  final String permission_reason;
  @override
  @JsonKey(name: 'permission_file')
  final String? permission_file;

  @override
  String toString() {
    return 'ResignRequest(permission_reason: $permission_reason, permission_file: $permission_file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResignRequestImpl &&
            (identical(other.permission_reason, permission_reason) ||
                other.permission_reason == permission_reason) &&
            (identical(other.permission_file, permission_file) ||
                other.permission_file == permission_file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, permission_reason, permission_file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResignRequestImplCopyWith<_$ResignRequestImpl> get copyWith =>
      __$$ResignRequestImplCopyWithImpl<_$ResignRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResignRequestImplToJson(
      this,
    );
  }
}

abstract class _ResignRequest implements ResignRequest {
  factory _ResignRequest(
      {@JsonKey(name: 'permission_reason')
      required final String permission_reason,
      @JsonKey(name: 'permission_file')
      required final String? permission_file}) = _$ResignRequestImpl;

  factory _ResignRequest.fromJson(Map<String, dynamic> json) =
      _$ResignRequestImpl.fromJson;

  @override
  @JsonKey(name: 'permission_reason')
  String get permission_reason;
  @override
  @JsonKey(name: 'permission_file')
  String? get permission_file;
  @override
  @JsonKey(ignore: true)
  _$$ResignRequestImplCopyWith<_$ResignRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResignResponse _$ResignResponseFromJson(Map<String, dynamic> json) {
  return _ResignResponse.fromJson(json);
}

/// @nodoc
mixin _$ResignResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ResignData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResignResponseCopyWith<ResignResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResignResponseCopyWith<$Res> {
  factory $ResignResponseCopyWith(
          ResignResponse value, $Res Function(ResignResponse) then) =
      _$ResignResponseCopyWithImpl<$Res, ResignResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ResignData? data});

  $ResignDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResignResponseCopyWithImpl<$Res, $Val extends ResignResponse>
    implements $ResignResponseCopyWith<$Res> {
  _$ResignResponseCopyWithImpl(this._value, this._then);

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
              as ResignData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResignDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ResignDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResignResponseImplCopyWith<$Res>
    implements $ResignResponseCopyWith<$Res> {
  factory _$$ResignResponseImplCopyWith(_$ResignResponseImpl value,
          $Res Function(_$ResignResponseImpl) then) =
      __$$ResignResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ResignData? data});

  @override
  $ResignDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResignResponseImplCopyWithImpl<$Res>
    extends _$ResignResponseCopyWithImpl<$Res, _$ResignResponseImpl>
    implements _$$ResignResponseImplCopyWith<$Res> {
  __$$ResignResponseImplCopyWithImpl(
      _$ResignResponseImpl _value, $Res Function(_$ResignResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResignResponseImpl(
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
              as ResignData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResignResponseImpl implements _ResignResponse {
  _$ResignResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$ResignResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResignResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final ResignData? data;

  @override
  String toString() {
    return 'ResignResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResignResponseImpl &&
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
  _$$ResignResponseImplCopyWith<_$ResignResponseImpl> get copyWith =>
      __$$ResignResponseImplCopyWithImpl<_$ResignResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResignResponseImplToJson(
      this,
    );
  }
}

abstract class _ResignResponse implements ResignResponse {
  factory _ResignResponse(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final ResignData? data}) = _$ResignResponseImpl;

  factory _ResignResponse.fromJson(Map<String, dynamic> json) =
      _$ResignResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  ResignData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResignResponseImplCopyWith<_$ResignResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResignData _$ResignDataFromJson(Map<String, dynamic> json) {
  return _ResignData.fromJson(json);
}

/// @nodoc
mixin _$ResignData {
  @JsonKey(name: 'permission_submission_id')
  int? get permission_submission_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'submision_id')
  int? get submision_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_file_id')
  int? get employee_file_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'permission_reason')
  String? get permission_reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResignDataCopyWith<ResignData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResignDataCopyWith<$Res> {
  factory $ResignDataCopyWith(
          ResignData value, $Res Function(ResignData) then) =
      _$ResignDataCopyWithImpl<$Res, ResignData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'permission_submission_id') int? permission_submission_id,
      @JsonKey(name: 'submision_id') int? submision_id,
      @JsonKey(name: 'employee_file_id') int? employee_file_id,
      @JsonKey(name: 'permission_reason') String? permission_reason,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class _$ResignDataCopyWithImpl<$Res, $Val extends ResignData>
    implements $ResignDataCopyWith<$Res> {
  _$ResignDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permission_submission_id = freezed,
    Object? submision_id = freezed,
    Object? employee_file_id = freezed,
    Object? permission_reason = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      permission_submission_id: freezed == permission_submission_id
          ? _value.permission_submission_id
          : permission_submission_id // ignore: cast_nullable_to_non_nullable
              as int?,
      submision_id: freezed == submision_id
          ? _value.submision_id
          : submision_id // ignore: cast_nullable_to_non_nullable
              as int?,
      employee_file_id: freezed == employee_file_id
          ? _value.employee_file_id
          : employee_file_id // ignore: cast_nullable_to_non_nullable
              as int?,
      permission_reason: freezed == permission_reason
          ? _value.permission_reason
          : permission_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResignDataImplCopyWith<$Res>
    implements $ResignDataCopyWith<$Res> {
  factory _$$ResignDataImplCopyWith(
          _$ResignDataImpl value, $Res Function(_$ResignDataImpl) then) =
      __$$ResignDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'permission_submission_id') int? permission_submission_id,
      @JsonKey(name: 'submision_id') int? submision_id,
      @JsonKey(name: 'employee_file_id') int? employee_file_id,
      @JsonKey(name: 'permission_reason') String? permission_reason,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class __$$ResignDataImplCopyWithImpl<$Res>
    extends _$ResignDataCopyWithImpl<$Res, _$ResignDataImpl>
    implements _$$ResignDataImplCopyWith<$Res> {
  __$$ResignDataImplCopyWithImpl(
      _$ResignDataImpl _value, $Res Function(_$ResignDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permission_submission_id = freezed,
    Object? submision_id = freezed,
    Object? employee_file_id = freezed,
    Object? permission_reason = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ResignDataImpl(
      permission_submission_id: freezed == permission_submission_id
          ? _value.permission_submission_id
          : permission_submission_id // ignore: cast_nullable_to_non_nullable
              as int?,
      submision_id: freezed == submision_id
          ? _value.submision_id
          : submision_id // ignore: cast_nullable_to_non_nullable
              as int?,
      employee_file_id: freezed == employee_file_id
          ? _value.employee_file_id
          : employee_file_id // ignore: cast_nullable_to_non_nullable
              as int?,
      permission_reason: freezed == permission_reason
          ? _value.permission_reason
          : permission_reason // ignore: cast_nullable_to_non_nullable
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
class _$ResignDataImpl implements _ResignData {
  _$ResignDataImpl(
      {@JsonKey(name: 'permission_submission_id') this.permission_submission_id,
      @JsonKey(name: 'submision_id') this.submision_id,
      @JsonKey(name: 'employee_file_id') this.employee_file_id,
      @JsonKey(name: 'permission_reason') this.permission_reason,
      @JsonKey(name: 'type') this.type});

  factory _$ResignDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResignDataImplFromJson(json);

  @override
  @JsonKey(name: 'permission_submission_id')
  final int? permission_submission_id;
  @override
  @JsonKey(name: 'submision_id')
  final int? submision_id;
  @override
  @JsonKey(name: 'employee_file_id')
  final int? employee_file_id;
  @override
  @JsonKey(name: 'permission_reason')
  final String? permission_reason;
  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  String toString() {
    return 'ResignData(permission_submission_id: $permission_submission_id, submision_id: $submision_id, employee_file_id: $employee_file_id, permission_reason: $permission_reason, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResignDataImpl &&
            (identical(
                    other.permission_submission_id, permission_submission_id) ||
                other.permission_submission_id == permission_submission_id) &&
            (identical(other.submision_id, submision_id) ||
                other.submision_id == submision_id) &&
            (identical(other.employee_file_id, employee_file_id) ||
                other.employee_file_id == employee_file_id) &&
            (identical(other.permission_reason, permission_reason) ||
                other.permission_reason == permission_reason) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, permission_submission_id,
      submision_id, employee_file_id, permission_reason, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResignDataImplCopyWith<_$ResignDataImpl> get copyWith =>
      __$$ResignDataImplCopyWithImpl<_$ResignDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResignDataImplToJson(
      this,
    );
  }
}

abstract class _ResignData implements ResignData {
  factory _ResignData(
      {@JsonKey(name: 'permission_submission_id')
      final int? permission_submission_id,
      @JsonKey(name: 'submision_id') final int? submision_id,
      @JsonKey(name: 'employee_file_id') final int? employee_file_id,
      @JsonKey(name: 'permission_reason') final String? permission_reason,
      @JsonKey(name: 'type') final String? type}) = _$ResignDataImpl;

  factory _ResignData.fromJson(Map<String, dynamic> json) =
      _$ResignDataImpl.fromJson;

  @override
  @JsonKey(name: 'permission_submission_id')
  int? get permission_submission_id;
  @override
  @JsonKey(name: 'submision_id')
  int? get submision_id;
  @override
  @JsonKey(name: 'employee_file_id')
  int? get employee_file_id;
  @override
  @JsonKey(name: 'permission_reason')
  String? get permission_reason;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$ResignDataImplCopyWith<_$ResignDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
