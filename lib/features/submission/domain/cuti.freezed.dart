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
  @JsonKey(name: 'from')
  String get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_reason')
  String get leave_reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_type')
  String get leave_type => throw _privateConstructorUsedError;
  @FileConverter()
  @JsonKey(name: 'leave_file')
  File get leave_file => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String get to => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'from') String from,
      @JsonKey(name: 'leave_reason') String leave_reason,
      @JsonKey(name: 'leave_type') String leave_type,
      @FileConverter() @JsonKey(name: 'leave_file') File leave_file,
      @JsonKey(name: 'to') String to});
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
    Object? from = null,
    Object? leave_reason = null,
    Object? leave_type = null,
    Object? leave_file = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      leave_reason: null == leave_reason
          ? _value.leave_reason
          : leave_reason // ignore: cast_nullable_to_non_nullable
              as String,
      leave_type: null == leave_type
          ? _value.leave_type
          : leave_type // ignore: cast_nullable_to_non_nullable
              as String,
      leave_file: null == leave_file
          ? _value.leave_file
          : leave_file // ignore: cast_nullable_to_non_nullable
              as File,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: 'from') String from,
      @JsonKey(name: 'leave_reason') String leave_reason,
      @JsonKey(name: 'leave_type') String leave_type,
      @FileConverter() @JsonKey(name: 'leave_file') File leave_file,
      @JsonKey(name: 'to') String to});
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
    Object? from = null,
    Object? leave_reason = null,
    Object? leave_type = null,
    Object? leave_file = null,
    Object? to = null,
  }) {
    return _then(_$CutiRequestImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      leave_reason: null == leave_reason
          ? _value.leave_reason
          : leave_reason // ignore: cast_nullable_to_non_nullable
              as String,
      leave_type: null == leave_type
          ? _value.leave_type
          : leave_type // ignore: cast_nullable_to_non_nullable
              as String,
      leave_file: null == leave_file
          ? _value.leave_file
          : leave_file // ignore: cast_nullable_to_non_nullable
              as File,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CutiRequestImpl implements _CutiRequest {
  _$CutiRequestImpl(
      {@JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'leave_reason') required this.leave_reason,
      @JsonKey(name: 'leave_type') required this.leave_type,
      @FileConverter() @JsonKey(name: 'leave_file') required this.leave_file,
      @JsonKey(name: 'to') required this.to});

  factory _$CutiRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CutiRequestImplFromJson(json);

  @override
  @JsonKey(name: 'from')
  final String from;
  @override
  @JsonKey(name: 'leave_reason')
  final String leave_reason;
  @override
  @JsonKey(name: 'leave_type')
  final String leave_type;
  @override
  @FileConverter()
  @JsonKey(name: 'leave_file')
  final File leave_file;
  @override
  @JsonKey(name: 'to')
  final String to;

  @override
  String toString() {
    return 'CutiRequest(from: $from, leave_reason: $leave_reason, leave_type: $leave_type, leave_file: $leave_file, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CutiRequestImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.leave_reason, leave_reason) ||
                other.leave_reason == leave_reason) &&
            (identical(other.leave_type, leave_type) ||
                other.leave_type == leave_type) &&
            (identical(other.leave_file, leave_file) ||
                other.leave_file == leave_file) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, leave_reason, leave_type, leave_file, to);

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
      {@JsonKey(name: 'from') required final String from,
      @JsonKey(name: 'leave_reason') required final String leave_reason,
      @JsonKey(name: 'leave_type') required final String leave_type,
      @FileConverter()
      @JsonKey(name: 'leave_file')
      required final File leave_file,
      @JsonKey(name: 'to') required final String to}) = _$CutiRequestImpl;

  factory _CutiRequest.fromJson(Map<String, dynamic> json) =
      _$CutiRequestImpl.fromJson;

  @override
  @JsonKey(name: 'from')
  String get from;
  @override
  @JsonKey(name: 'leave_reason')
  String get leave_reason;
  @override
  @JsonKey(name: 'leave_type')
  String get leave_type;
  @override
  @FileConverter()
  @JsonKey(name: 'leave_file')
  File get leave_file;
  @override
  @JsonKey(name: 'to')
  String get to;
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
  @JsonKey(name: 'leave_submission_id')
  int? get leave_submission_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'submision_id')
  int? get submision_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_file_id')
  int? get employee_file_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_reason')
  String? get leave_reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_type')
  String? get leave_type => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'leave_submission_id') int? leave_submission_id,
      @JsonKey(name: 'submision_id') int? submision_id,
      @JsonKey(name: 'employee_file_id') int? employee_file_id,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'leave_reason') String? leave_reason,
      @JsonKey(name: 'leave_type') String? leave_type});
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
    Object? leave_submission_id = freezed,
    Object? submision_id = freezed,
    Object? employee_file_id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? leave_reason = freezed,
    Object? leave_type = freezed,
  }) {
    return _then(_value.copyWith(
      leave_submission_id: freezed == leave_submission_id
          ? _value.leave_submission_id
          : leave_submission_id // ignore: cast_nullable_to_non_nullable
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
      leave_reason: freezed == leave_reason
          ? _value.leave_reason
          : leave_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      leave_type: freezed == leave_type
          ? _value.leave_type
          : leave_type // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'leave_submission_id') int? leave_submission_id,
      @JsonKey(name: 'submision_id') int? submision_id,
      @JsonKey(name: 'employee_file_id') int? employee_file_id,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'leave_reason') String? leave_reason,
      @JsonKey(name: 'leave_type') String? leave_type});
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
    Object? leave_submission_id = freezed,
    Object? submision_id = freezed,
    Object? employee_file_id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? leave_reason = freezed,
    Object? leave_type = freezed,
  }) {
    return _then(_$CutiDataImpl(
      leave_submission_id: freezed == leave_submission_id
          ? _value.leave_submission_id
          : leave_submission_id // ignore: cast_nullable_to_non_nullable
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
      leave_reason: freezed == leave_reason
          ? _value.leave_reason
          : leave_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      leave_type: freezed == leave_type
          ? _value.leave_type
          : leave_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CutiDataImpl implements _CutiData {
  _$CutiDataImpl(
      {@JsonKey(name: 'leave_submission_id') this.leave_submission_id,
      @JsonKey(name: 'submision_id') this.submision_id,
      @JsonKey(name: 'employee_file_id') this.employee_file_id,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'leave_reason') this.leave_reason,
      @JsonKey(name: 'leave_type') this.leave_type});

  factory _$CutiDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CutiDataImplFromJson(json);

  @override
  @JsonKey(name: 'leave_submission_id')
  final int? leave_submission_id;
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
  @JsonKey(name: 'leave_reason')
  final String? leave_reason;
  @override
  @JsonKey(name: 'leave_type')
  final String? leave_type;

  @override
  String toString() {
    return 'CutiData(leave_submission_id: $leave_submission_id, submision_id: $submision_id, employee_file_id: $employee_file_id, from: $from, to: $to, leave_reason: $leave_reason, leave_type: $leave_type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CutiDataImpl &&
            (identical(other.leave_submission_id, leave_submission_id) ||
                other.leave_submission_id == leave_submission_id) &&
            (identical(other.submision_id, submision_id) ||
                other.submision_id == submision_id) &&
            (identical(other.employee_file_id, employee_file_id) ||
                other.employee_file_id == employee_file_id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.leave_reason, leave_reason) ||
                other.leave_reason == leave_reason) &&
            (identical(other.leave_type, leave_type) ||
                other.leave_type == leave_type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, leave_submission_id,
      submision_id, employee_file_id, from, to, leave_reason, leave_type);

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
      {@JsonKey(name: 'leave_submission_id') final int? leave_submission_id,
      @JsonKey(name: 'submision_id') final int? submision_id,
      @JsonKey(name: 'employee_file_id') final int? employee_file_id,
      @JsonKey(name: 'from') final String? from,
      @JsonKey(name: 'to') final String? to,
      @JsonKey(name: 'leave_reason') final String? leave_reason,
      @JsonKey(name: 'leave_type') final String? leave_type}) = _$CutiDataImpl;

  factory _CutiData.fromJson(Map<String, dynamic> json) =
      _$CutiDataImpl.fromJson;

  @override
  @JsonKey(name: 'leave_submission_id')
  int? get leave_submission_id;
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
  @JsonKey(name: 'leave_reason')
  String? get leave_reason;
  @override
  @JsonKey(name: 'leave_type')
  String? get leave_type;
  @override
  @JsonKey(ignore: true)
  _$$CutiDataImplCopyWith<_$CutiDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
