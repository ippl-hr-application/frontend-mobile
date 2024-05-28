// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckoutRequest _$CheckoutRequestFromJson(Map<String, dynamic> json) {
  return _CheckoutRequest.fromJson(json);
}

/// @nodoc
mixin _$CheckoutRequest {
  @FileConverter()
  @JsonKey(name: 'attendance_file')
  File get attendance_file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutRequestCopyWith<CheckoutRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutRequestCopyWith<$Res> {
  factory $CheckoutRequestCopyWith(
          CheckoutRequest value, $Res Function(CheckoutRequest) then) =
      _$CheckoutRequestCopyWithImpl<$Res, CheckoutRequest>;
  @useResult
  $Res call(
      {@FileConverter()
      @JsonKey(name: 'attendance_file')
      File attendance_file});
}

/// @nodoc
class _$CheckoutRequestCopyWithImpl<$Res, $Val extends CheckoutRequest>
    implements $CheckoutRequestCopyWith<$Res> {
  _$CheckoutRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendance_file = null,
  }) {
    return _then(_value.copyWith(
      attendance_file: null == attendance_file
          ? _value.attendance_file
          : attendance_file // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutRequestImplCopyWith<$Res>
    implements $CheckoutRequestCopyWith<$Res> {
  factory _$$CheckoutRequestImplCopyWith(_$CheckoutRequestImpl value,
          $Res Function(_$CheckoutRequestImpl) then) =
      __$$CheckoutRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FileConverter()
      @JsonKey(name: 'attendance_file')
      File attendance_file});
}

/// @nodoc
class __$$CheckoutRequestImplCopyWithImpl<$Res>
    extends _$CheckoutRequestCopyWithImpl<$Res, _$CheckoutRequestImpl>
    implements _$$CheckoutRequestImplCopyWith<$Res> {
  __$$CheckoutRequestImplCopyWithImpl(
      _$CheckoutRequestImpl _value, $Res Function(_$CheckoutRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendance_file = null,
  }) {
    return _then(_$CheckoutRequestImpl(
      attendance_file: null == attendance_file
          ? _value.attendance_file
          : attendance_file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutRequestImpl implements _CheckoutRequest {
  _$CheckoutRequestImpl(
      {@FileConverter()
      @JsonKey(name: 'attendance_file')
      required this.attendance_file});

  factory _$CheckoutRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutRequestImplFromJson(json);

  @override
  @FileConverter()
  @JsonKey(name: 'attendance_file')
  final File attendance_file;

  @override
  String toString() {
    return 'CheckoutRequest(attendance_file: $attendance_file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutRequestImpl &&
            (identical(other.attendance_file, attendance_file) ||
                other.attendance_file == attendance_file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attendance_file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutRequestImplCopyWith<_$CheckoutRequestImpl> get copyWith =>
      __$$CheckoutRequestImplCopyWithImpl<_$CheckoutRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutRequestImplToJson(
      this,
    );
  }
}

abstract class _CheckoutRequest implements CheckoutRequest {
  factory _CheckoutRequest(
      {@FileConverter()
      @JsonKey(name: 'attendance_file')
      required final File attendance_file}) = _$CheckoutRequestImpl;

  factory _CheckoutRequest.fromJson(Map<String, dynamic> json) =
      _$CheckoutRequestImpl.fromJson;

  @override
  @FileConverter()
  @JsonKey(name: 'attendance_file')
  File get attendance_file;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutRequestImplCopyWith<_$CheckoutRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _CheckoutResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckoutResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CheckoutData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutResponseCopyWith<CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutResponseCopyWith<$Res> {
  factory $CheckoutResponseCopyWith(
          CheckoutResponse value, $Res Function(CheckoutResponse) then) =
      _$CheckoutResponseCopyWithImpl<$Res, CheckoutResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') CheckoutData? data});

  $CheckoutDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CheckoutResponseCopyWithImpl<$Res, $Val extends CheckoutResponse>
    implements $CheckoutResponseCopyWith<$Res> {
  _$CheckoutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckoutDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CheckoutDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutResponseImplCopyWith<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  factory _$$CheckoutResponseImplCopyWith(_$CheckoutResponseImpl value,
          $Res Function(_$CheckoutResponseImpl) then) =
      __$$CheckoutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') CheckoutData? data});

  @override
  $CheckoutDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CheckoutResponseImplCopyWithImpl<$Res>
    extends _$CheckoutResponseCopyWithImpl<$Res, _$CheckoutResponseImpl>
    implements _$$CheckoutResponseImplCopyWith<$Res> {
  __$$CheckoutResponseImplCopyWithImpl(_$CheckoutResponseImpl _value,
      $Res Function(_$CheckoutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CheckoutResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutResponseImpl implements _CheckoutResponse {
  _$CheckoutResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'data') this.data});

  factory _$CheckoutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'data')
  final CheckoutData? data;

  @override
  String toString() {
    return 'CheckoutResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutResponseImplCopyWith<_$CheckoutResponseImpl> get copyWith =>
      __$$CheckoutResponseImplCopyWithImpl<_$CheckoutResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckoutResponse implements CheckoutResponse {
  factory _CheckoutResponse(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'data') final CheckoutData? data}) =
      _$CheckoutResponseImpl;

  factory _CheckoutResponse.fromJson(Map<String, dynamic> json) =
      _$CheckoutResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'data')
  CheckoutData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutResponseImplCopyWith<_$CheckoutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutData _$CheckoutDataFromJson(Map<String, dynamic> json) {
  return _CheckoutData.fromJson(json);
}

/// @nodoc
mixin _$CheckoutData {
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutDataCopyWith<CheckoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDataCopyWith<$Res> {
  factory $CheckoutDataCopyWith(
          CheckoutData value, $Res Function(CheckoutData) then) =
      _$CheckoutDataCopyWithImpl<$Res, CheckoutData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'time') String? time});
}

/// @nodoc
class _$CheckoutDataCopyWithImpl<$Res, $Val extends CheckoutData>
    implements $CheckoutDataCopyWith<$Res> {
  _$CheckoutDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutDataImplCopyWith<$Res>
    implements $CheckoutDataCopyWith<$Res> {
  factory _$$CheckoutDataImplCopyWith(
          _$CheckoutDataImpl value, $Res Function(_$CheckoutDataImpl) then) =
      __$$CheckoutDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'time') String? time});
}

/// @nodoc
class __$$CheckoutDataImplCopyWithImpl<$Res>
    extends _$CheckoutDataCopyWithImpl<$Res, _$CheckoutDataImpl>
    implements _$$CheckoutDataImplCopyWith<$Res> {
  __$$CheckoutDataImplCopyWithImpl(
      _$CheckoutDataImpl _value, $Res Function(_$CheckoutDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? time = freezed,
  }) {
    return _then(_$CheckoutDataImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutDataImpl implements _CheckoutData {
  _$CheckoutDataImpl(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'time') this.time});

  factory _$CheckoutDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutDataImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'to')
  final String? to;
  @override
  @JsonKey(name: 'time')
  final String? time;

  @override
  String toString() {
    return 'CheckoutData(date: $date, from: $from, to: $to, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, from, to, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutDataImplCopyWith<_$CheckoutDataImpl> get copyWith =>
      __$$CheckoutDataImplCopyWithImpl<_$CheckoutDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutDataImplToJson(
      this,
    );
  }
}

abstract class _CheckoutData implements CheckoutData {
  factory _CheckoutData(
      {@JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'from') final String? from,
      @JsonKey(name: 'to') final String? to,
      @JsonKey(name: 'time') final String? time}) = _$CheckoutDataImpl;

  factory _CheckoutData.fromJson(Map<String, dynamic> json) =
      _$CheckoutDataImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'to')
  String? get to;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutDataImplCopyWith<_$CheckoutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
