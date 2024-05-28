// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_attandance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestAttandance _$RequestAttandanceFromJson(Map<String, dynamic> json) {
  return _RequestAttandance.fromJson(json);
}

/// @nodoc
mixin _$RequestAttandance {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  RequestData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestAttandanceCopyWith<RequestAttandance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestAttandanceCopyWith<$Res> {
  factory $RequestAttandanceCopyWith(
          RequestAttandance value, $Res Function(RequestAttandance) then) =
      _$RequestAttandanceCopyWithImpl<$Res, RequestAttandance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') RequestData? data});

  $RequestDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RequestAttandanceCopyWithImpl<$Res, $Val extends RequestAttandance>
    implements $RequestAttandanceCopyWith<$Res> {
  _$RequestAttandanceCopyWithImpl(this._value, this._then);

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
              as RequestData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RequestDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestAttandanceImplCopyWith<$Res>
    implements $RequestAttandanceCopyWith<$Res> {
  factory _$$RequestAttandanceImplCopyWith(_$RequestAttandanceImpl value,
          $Res Function(_$RequestAttandanceImpl) then) =
      __$$RequestAttandanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') RequestData? data});

  @override
  $RequestDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RequestAttandanceImplCopyWithImpl<$Res>
    extends _$RequestAttandanceCopyWithImpl<$Res, _$RequestAttandanceImpl>
    implements _$$RequestAttandanceImplCopyWith<$Res> {
  __$$RequestAttandanceImplCopyWithImpl(_$RequestAttandanceImpl _value,
      $Res Function(_$RequestAttandanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RequestAttandanceImpl(
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
              as RequestData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestAttandanceImpl implements _RequestAttandance {
  _$RequestAttandanceImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$RequestAttandanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestAttandanceImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final RequestData? data;

  @override
  String toString() {
    return 'RequestAttandance(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestAttandanceImpl &&
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
  _$$RequestAttandanceImplCopyWith<_$RequestAttandanceImpl> get copyWith =>
      __$$RequestAttandanceImplCopyWithImpl<_$RequestAttandanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestAttandanceImplToJson(
      this,
    );
  }
}

abstract class _RequestAttandance implements RequestAttandance {
  factory _RequestAttandance(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final RequestData? data}) =
      _$RequestAttandanceImpl;

  factory _RequestAttandance.fromJson(Map<String, dynamic> json) =
      _$RequestAttandanceImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  RequestData? get data;
  @override
  @JsonKey(ignore: true)
  _$$RequestAttandanceImplCopyWith<_$RequestAttandanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestData _$RequestDataFromJson(Map<String, dynamic> json) {
  return _RequestData.fromJson(json);
}

/// @nodoc
mixin _$RequestData {
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  String? get employee_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDataCopyWith<RequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDataCopyWith<$Res> {
  factory $RequestDataCopyWith(
          RequestData value, $Res Function(RequestData) then) =
      _$RequestDataCopyWithImpl<$Res, RequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'employee_id') String? employee_id});
}

/// @nodoc
class _$RequestDataCopyWithImpl<$Res, $Val extends RequestData>
    implements $RequestDataCopyWith<$Res> {
  _$RequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? employee_id = freezed,
  }) {
    return _then(_value.copyWith(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDataImplCopyWith<$Res>
    implements $RequestDataCopyWith<$Res> {
  factory _$$RequestDataImplCopyWith(
          _$RequestDataImpl value, $Res Function(_$RequestDataImpl) then) =
      __$$RequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'employee_id') String? employee_id});
}

/// @nodoc
class __$$RequestDataImplCopyWithImpl<$Res>
    extends _$RequestDataCopyWithImpl<$Res, _$RequestDataImpl>
    implements _$$RequestDataImplCopyWith<$Res> {
  __$$RequestDataImplCopyWithImpl(
      _$RequestDataImpl _value, $Res Function(_$RequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? employee_id = freezed,
  }) {
    return _then(_$RequestDataImpl(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDataImpl implements _RequestData {
  _$RequestDataImpl(
      {@JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'employee_id') this.employee_id});

  factory _$RequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'reason')
  final String? reason;
  @override
  @JsonKey(name: 'employee_id')
  final String? employee_id;

  @override
  String toString() {
    return 'RequestData(reason: $reason, employee_id: $employee_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestDataImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.employee_id, employee_id) ||
                other.employee_id == employee_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, employee_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDataImplCopyWith<_$RequestDataImpl> get copyWith =>
      __$$RequestDataImplCopyWithImpl<_$RequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDataImplToJson(
      this,
    );
  }
}

abstract class _RequestData implements RequestData {
  factory _RequestData(
          {@JsonKey(name: 'reason') final String? reason,
          @JsonKey(name: 'employee_id') final String? employee_id}) =
      _$RequestDataImpl;

  factory _RequestData.fromJson(Map<String, dynamic> json) =
      _$RequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(name: 'employee_id')
  String? get employee_id;
  @override
  @JsonKey(ignore: true)
  _$$RequestDataImplCopyWith<_$RequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
