// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckinRequest _$CheckinRequestFromJson(Map<String, dynamic> json) {
  return _CheckinRequest.fromJson(json);
}

/// @nodoc
mixin _$CheckinRequest {
  @FileConverter()
  @JsonKey(name: 'attendance_file')
  File get attendance_file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckinRequestCopyWith<CheckinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinRequestCopyWith<$Res> {
  factory $CheckinRequestCopyWith(
          CheckinRequest value, $Res Function(CheckinRequest) then) =
      _$CheckinRequestCopyWithImpl<$Res, CheckinRequest>;
  @useResult
  $Res call(
      {@FileConverter()
      @JsonKey(name: 'attendance_file')
      File attendance_file});
}

/// @nodoc
class _$CheckinRequestCopyWithImpl<$Res, $Val extends CheckinRequest>
    implements $CheckinRequestCopyWith<$Res> {
  _$CheckinRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$CheckinRequestImplCopyWith<$Res>
    implements $CheckinRequestCopyWith<$Res> {
  factory _$$CheckinRequestImplCopyWith(_$CheckinRequestImpl value,
          $Res Function(_$CheckinRequestImpl) then) =
      __$$CheckinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FileConverter()
      @JsonKey(name: 'attendance_file')
      File attendance_file});
}

/// @nodoc
class __$$CheckinRequestImplCopyWithImpl<$Res>
    extends _$CheckinRequestCopyWithImpl<$Res, _$CheckinRequestImpl>
    implements _$$CheckinRequestImplCopyWith<$Res> {
  __$$CheckinRequestImplCopyWithImpl(
      _$CheckinRequestImpl _value, $Res Function(_$CheckinRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendance_file = null,
  }) {
    return _then(_$CheckinRequestImpl(
      attendance_file: null == attendance_file
          ? _value.attendance_file
          : attendance_file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckinRequestImpl implements _CheckinRequest {
  _$CheckinRequestImpl(
      {@FileConverter()
      @JsonKey(name: 'attendance_file')
      required this.attendance_file});

  factory _$CheckinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckinRequestImplFromJson(json);

  @override
  @FileConverter()
  @JsonKey(name: 'attendance_file')
  final File attendance_file;

  @override
  String toString() {
    return 'CheckinRequest(attendance_file: $attendance_file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckinRequestImpl &&
            (identical(other.attendance_file, attendance_file) ||
                other.attendance_file == attendance_file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attendance_file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckinRequestImplCopyWith<_$CheckinRequestImpl> get copyWith =>
      __$$CheckinRequestImplCopyWithImpl<_$CheckinRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckinRequestImplToJson(
      this,
    );
  }
}

abstract class _CheckinRequest implements CheckinRequest {
  factory _CheckinRequest(
      {@FileConverter()
      @JsonKey(name: 'attendance_file')
      required final File attendance_file}) = _$CheckinRequestImpl;

  factory _CheckinRequest.fromJson(Map<String, dynamic> json) =
      _$CheckinRequestImpl.fromJson;

  @override
  @FileConverter()
  @JsonKey(name: 'attendance_file')
  File get attendance_file;
  @override
  @JsonKey(ignore: true)
  _$$CheckinRequestImplCopyWith<_$CheckinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckinResponse _$CheckinResponseFromJson(Map<String, dynamic> json) {
  return _CheckinResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckinResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CheckinData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckinResponseCopyWith<CheckinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinResponseCopyWith<$Res> {
  factory $CheckinResponseCopyWith(
          CheckinResponse value, $Res Function(CheckinResponse) then) =
      _$CheckinResponseCopyWithImpl<$Res, CheckinResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') CheckinData? data});

  $CheckinDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CheckinResponseCopyWithImpl<$Res, $Val extends CheckinResponse>
    implements $CheckinResponseCopyWith<$Res> {
  _$CheckinResponseCopyWithImpl(this._value, this._then);

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
              as CheckinData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckinDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CheckinDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckinResponseImplCopyWith<$Res>
    implements $CheckinResponseCopyWith<$Res> {
  factory _$$CheckinResponseImplCopyWith(_$CheckinResponseImpl value,
          $Res Function(_$CheckinResponseImpl) then) =
      __$$CheckinResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') CheckinData? data});

  @override
  $CheckinDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CheckinResponseImplCopyWithImpl<$Res>
    extends _$CheckinResponseCopyWithImpl<$Res, _$CheckinResponseImpl>
    implements _$$CheckinResponseImplCopyWith<$Res> {
  __$$CheckinResponseImplCopyWithImpl(
      _$CheckinResponseImpl _value, $Res Function(_$CheckinResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CheckinResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckinData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckinResponseImpl implements _CheckinResponse {
  _$CheckinResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'data') this.data});

  factory _$CheckinResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckinResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'data')
  final CheckinData? data;

  @override
  String toString() {
    return 'CheckinResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckinResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckinResponseImplCopyWith<_$CheckinResponseImpl> get copyWith =>
      __$$CheckinResponseImplCopyWithImpl<_$CheckinResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckinResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckinResponse implements CheckinResponse {
  factory _CheckinResponse(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'data') final CheckinData? data}) = _$CheckinResponseImpl;

  factory _CheckinResponse.fromJson(Map<String, dynamic> json) =
      _$CheckinResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'data')
  CheckinData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CheckinResponseImplCopyWith<_$CheckinResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckinData _$CheckinDataFromJson(Map<String, dynamic> json) {
  return _CheckinData.fromJson(json);
}

/// @nodoc
mixin _$CheckinData {
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
  $CheckinDataCopyWith<CheckinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinDataCopyWith<$Res> {
  factory $CheckinDataCopyWith(
          CheckinData value, $Res Function(CheckinData) then) =
      _$CheckinDataCopyWithImpl<$Res, CheckinData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'time') String? time});
}

/// @nodoc
class _$CheckinDataCopyWithImpl<$Res, $Val extends CheckinData>
    implements $CheckinDataCopyWith<$Res> {
  _$CheckinDataCopyWithImpl(this._value, this._then);

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
abstract class _$$CheckinDataImplCopyWith<$Res>
    implements $CheckinDataCopyWith<$Res> {
  factory _$$CheckinDataImplCopyWith(
          _$CheckinDataImpl value, $Res Function(_$CheckinDataImpl) then) =
      __$$CheckinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'time') String? time});
}

/// @nodoc
class __$$CheckinDataImplCopyWithImpl<$Res>
    extends _$CheckinDataCopyWithImpl<$Res, _$CheckinDataImpl>
    implements _$$CheckinDataImplCopyWith<$Res> {
  __$$CheckinDataImplCopyWithImpl(
      _$CheckinDataImpl _value, $Res Function(_$CheckinDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? time = freezed,
  }) {
    return _then(_$CheckinDataImpl(
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
class _$CheckinDataImpl implements _CheckinData {
  _$CheckinDataImpl(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'time') this.time});

  factory _$CheckinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckinDataImplFromJson(json);

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
    return 'CheckinData(date: $date, from: $from, to: $to, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckinDataImpl &&
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
  _$$CheckinDataImplCopyWith<_$CheckinDataImpl> get copyWith =>
      __$$CheckinDataImplCopyWithImpl<_$CheckinDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckinDataImplToJson(
      this,
    );
  }
}

abstract class _CheckinData implements CheckinData {
  factory _CheckinData(
      {@JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'from') final String? from,
      @JsonKey(name: 'to') final String? to,
      @JsonKey(name: 'time') final String? time}) = _$CheckinDataImpl;

  factory _CheckinData.fromJson(Map<String, dynamic> json) =
      _$CheckinDataImpl.fromJson;

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
  _$$CheckinDataImplCopyWith<_$CheckinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
