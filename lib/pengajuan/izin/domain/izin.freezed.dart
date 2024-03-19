// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'izin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IzinRequest _$IzinRequestFromJson(Map<String, dynamic> json) {
  return _IzinRequest.fromJson(json);
}

/// @nodoc
mixin _$IzinRequest {
  @JsonKey(name: 'from')
  String get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'permission_reason')
  String get permission_reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'permission_file')
  String get permission_file => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IzinRequestCopyWith<IzinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IzinRequestCopyWith<$Res> {
  factory $IzinRequestCopyWith(
          IzinRequest value, $Res Function(IzinRequest) then) =
      _$IzinRequestCopyWithImpl<$Res, IzinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String from,
      @JsonKey(name: 'permission_reason') String permission_reason,
      @JsonKey(name: 'permission_file') String permission_file,
      @JsonKey(name: 'to') String to});
}

/// @nodoc
class _$IzinRequestCopyWithImpl<$Res, $Val extends IzinRequest>
    implements $IzinRequestCopyWith<$Res> {
  _$IzinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? permission_reason = null,
    Object? permission_file = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      permission_reason: null == permission_reason
          ? _value.permission_reason
          : permission_reason // ignore: cast_nullable_to_non_nullable
              as String,
      permission_file: null == permission_file
          ? _value.permission_file
          : permission_file // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IzinRequestImplCopyWith<$Res>
    implements $IzinRequestCopyWith<$Res> {
  factory _$$IzinRequestImplCopyWith(
          _$IzinRequestImpl value, $Res Function(_$IzinRequestImpl) then) =
      __$$IzinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String from,
      @JsonKey(name: 'permission_reason') String permission_reason,
      @JsonKey(name: 'permission_file') String permission_file,
      @JsonKey(name: 'to') String to});
}

/// @nodoc
class __$$IzinRequestImplCopyWithImpl<$Res>
    extends _$IzinRequestCopyWithImpl<$Res, _$IzinRequestImpl>
    implements _$$IzinRequestImplCopyWith<$Res> {
  __$$IzinRequestImplCopyWithImpl(
      _$IzinRequestImpl _value, $Res Function(_$IzinRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? permission_reason = null,
    Object? permission_file = null,
    Object? to = null,
  }) {
    return _then(_$IzinRequestImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      permission_reason: null == permission_reason
          ? _value.permission_reason
          : permission_reason // ignore: cast_nullable_to_non_nullable
              as String,
      permission_file: null == permission_file
          ? _value.permission_file
          : permission_file // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IzinRequestImpl implements _IzinRequest {
  _$IzinRequestImpl(
      {@JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'permission_reason') required this.permission_reason,
      @JsonKey(name: 'permission_file') required this.permission_file,
      @JsonKey(name: 'to') required this.to});

  factory _$IzinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$IzinRequestImplFromJson(json);

  @override
  @JsonKey(name: 'from')
  final String from;
  @override
  @JsonKey(name: 'permission_reason')
  final String permission_reason;
  @override
  @JsonKey(name: 'permission_file')
  final String permission_file;
  @override
  @JsonKey(name: 'to')
  final String to;

  @override
  String toString() {
    return 'IzinRequest(from: $from, permission_reason: $permission_reason, permission_file: $permission_file, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IzinRequestImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.permission_reason, permission_reason) ||
                other.permission_reason == permission_reason) &&
            (identical(other.permission_file, permission_file) ||
                other.permission_file == permission_file) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, permission_reason, permission_file, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IzinRequestImplCopyWith<_$IzinRequestImpl> get copyWith =>
      __$$IzinRequestImplCopyWithImpl<_$IzinRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IzinRequestImplToJson(
      this,
    );
  }
}

abstract class _IzinRequest implements IzinRequest {
  factory _IzinRequest(
      {@JsonKey(name: 'from') required final String from,
      @JsonKey(name: 'permission_reason')
      required final String permission_reason,
      @JsonKey(name: 'permission_file') required final String permission_file,
      @JsonKey(name: 'to') required final String to}) = _$IzinRequestImpl;

  factory _IzinRequest.fromJson(Map<String, dynamic> json) =
      _$IzinRequestImpl.fromJson;

  @override
  @JsonKey(name: 'from')
  String get from;
  @override
  @JsonKey(name: 'permission_reason')
  String get permission_reason;
  @override
  @JsonKey(name: 'permission_file')
  String get permission_file;
  @override
  @JsonKey(name: 'to')
  String get to;
  @override
  @JsonKey(ignore: true)
  _$$IzinRequestImplCopyWith<_$IzinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IzinResponse _$IzinResponseFromJson(Map<String, dynamic> json) {
  return _IzinResponse.fromJson(json);
}

/// @nodoc
mixin _$IzinResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  IzinData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IzinResponseCopyWith<IzinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IzinResponseCopyWith<$Res> {
  factory $IzinResponseCopyWith(
          IzinResponse value, $Res Function(IzinResponse) then) =
      _$IzinResponseCopyWithImpl<$Res, IzinResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') IzinData? data});

  $IzinDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$IzinResponseCopyWithImpl<$Res, $Val extends IzinResponse>
    implements $IzinResponseCopyWith<$Res> {
  _$IzinResponseCopyWithImpl(this._value, this._then);

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
              as IzinData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IzinDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $IzinDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IzinResponseImplCopyWith<$Res>
    implements $IzinResponseCopyWith<$Res> {
  factory _$$IzinResponseImplCopyWith(
          _$IzinResponseImpl value, $Res Function(_$IzinResponseImpl) then) =
      __$$IzinResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') IzinData? data});

  @override
  $IzinDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$IzinResponseImplCopyWithImpl<$Res>
    extends _$IzinResponseCopyWithImpl<$Res, _$IzinResponseImpl>
    implements _$$IzinResponseImplCopyWith<$Res> {
  __$$IzinResponseImplCopyWithImpl(
      _$IzinResponseImpl _value, $Res Function(_$IzinResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$IzinResponseImpl(
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
              as IzinData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IzinResponseImpl implements _IzinResponse {
  _$IzinResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$IzinResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IzinResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final IzinData? data;

  @override
  String toString() {
    return 'IzinResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IzinResponseImpl &&
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
  _$$IzinResponseImplCopyWith<_$IzinResponseImpl> get copyWith =>
      __$$IzinResponseImplCopyWithImpl<_$IzinResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IzinResponseImplToJson(
      this,
    );
  }
}

abstract class _IzinResponse implements IzinResponse {
  factory _IzinResponse(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final IzinData? data}) = _$IzinResponseImpl;

  factory _IzinResponse.fromJson(Map<String, dynamic> json) =
      _$IzinResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  IzinData? get data;
  @override
  @JsonKey(ignore: true)
  _$$IzinResponseImplCopyWith<_$IzinResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IzinData _$IzinDataFromJson(Map<String, dynamic> json) {
  return _IzinData.fromJson(json);
}

/// @nodoc
mixin _$IzinData {
  @JsonKey(name: 'permission_submission_id')
  int? get permission_submission_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'submision_id')
  int? get submision_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_file_id')
  int? get employee_file_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'permission_reason')
  String? get permission_reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IzinDataCopyWith<IzinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IzinDataCopyWith<$Res> {
  factory $IzinDataCopyWith(IzinData value, $Res Function(IzinData) then) =
      _$IzinDataCopyWithImpl<$Res, IzinData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'permission_submission_id') int? permission_submission_id,
      @JsonKey(name: 'submision_id') int? submision_id,
      @JsonKey(name: 'employee_file_id') int? employee_file_id,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'permission_reason') String? permission_reason,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class _$IzinDataCopyWithImpl<$Res, $Val extends IzinData>
    implements $IzinDataCopyWith<$Res> {
  _$IzinDataCopyWithImpl(this._value, this._then);

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
    Object? from = freezed,
    Object? to = freezed,
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
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$IzinDataImplCopyWith<$Res>
    implements $IzinDataCopyWith<$Res> {
  factory _$$IzinDataImplCopyWith(
          _$IzinDataImpl value, $Res Function(_$IzinDataImpl) then) =
      __$$IzinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'permission_submission_id') int? permission_submission_id,
      @JsonKey(name: 'submision_id') int? submision_id,
      @JsonKey(name: 'employee_file_id') int? employee_file_id,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'permission_reason') String? permission_reason,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class __$$IzinDataImplCopyWithImpl<$Res>
    extends _$IzinDataCopyWithImpl<$Res, _$IzinDataImpl>
    implements _$$IzinDataImplCopyWith<$Res> {
  __$$IzinDataImplCopyWithImpl(
      _$IzinDataImpl _value, $Res Function(_$IzinDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permission_submission_id = freezed,
    Object? submision_id = freezed,
    Object? employee_file_id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? permission_reason = freezed,
    Object? type = freezed,
  }) {
    return _then(_$IzinDataImpl(
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
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$IzinDataImpl implements _IzinData {
  _$IzinDataImpl(
      {@JsonKey(name: 'permission_submission_id') this.permission_submission_id,
      @JsonKey(name: 'submision_id') this.submision_id,
      @JsonKey(name: 'employee_file_id') this.employee_file_id,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'permission_reason') this.permission_reason,
      @JsonKey(name: 'type') this.type});

  factory _$IzinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IzinDataImplFromJson(json);

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
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'to')
  final String? to;
  @override
  @JsonKey(name: 'permission_reason')
  final String? permission_reason;
  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  String toString() {
    return 'IzinData(permission_submission_id: $permission_submission_id, submision_id: $submision_id, employee_file_id: $employee_file_id, from: $from, to: $to, permission_reason: $permission_reason, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IzinDataImpl &&
            (identical(
                    other.permission_submission_id, permission_submission_id) ||
                other.permission_submission_id == permission_submission_id) &&
            (identical(other.submision_id, submision_id) ||
                other.submision_id == submision_id) &&
            (identical(other.employee_file_id, employee_file_id) ||
                other.employee_file_id == employee_file_id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.permission_reason, permission_reason) ||
                other.permission_reason == permission_reason) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, permission_submission_id,
      submision_id, employee_file_id, from, to, permission_reason, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IzinDataImplCopyWith<_$IzinDataImpl> get copyWith =>
      __$$IzinDataImplCopyWithImpl<_$IzinDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IzinDataImplToJson(
      this,
    );
  }
}

abstract class _IzinData implements IzinData {
  factory _IzinData(
      {@JsonKey(name: 'permission_submission_id')
      final int? permission_submission_id,
      @JsonKey(name: 'submision_id') final int? submision_id,
      @JsonKey(name: 'employee_file_id') final int? employee_file_id,
      @JsonKey(name: 'from') final String? from,
      @JsonKey(name: 'to') final String? to,
      @JsonKey(name: 'permission_reason') final String? permission_reason,
      @JsonKey(name: 'type') final String? type}) = _$IzinDataImpl;

  factory _IzinData.fromJson(Map<String, dynamic> json) =
      _$IzinDataImpl.fromJson;

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
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'to')
  String? get to;
  @override
  @JsonKey(name: 'permission_reason')
  String? get permission_reason;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$IzinDataImplCopyWith<_$IzinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
