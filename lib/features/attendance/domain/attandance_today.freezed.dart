// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attandance_today.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttandanceToday _$AttandanceTodayFromJson(Map<String, dynamic> json) {
  return _AttandanceToday.fromJson(json);
}

/// @nodoc
mixin _$AttandanceToday {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttandanceTodayCopyWith<AttandanceToday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttandanceTodayCopyWith<$Res> {
  factory $AttandanceTodayCopyWith(
          AttandanceToday value, $Res Function(AttandanceToday) then) =
      _$AttandanceTodayCopyWithImpl<$Res, AttandanceToday>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') DataResponse? data});

  $DataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$AttandanceTodayCopyWithImpl<$Res, $Val extends AttandanceToday>
    implements $AttandanceTodayCopyWith<$Res> {
  _$AttandanceTodayCopyWithImpl(this._value, this._then);

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
              as DataResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttandanceTodayImplCopyWith<$Res>
    implements $AttandanceTodayCopyWith<$Res> {
  factory _$$AttandanceTodayImplCopyWith(_$AttandanceTodayImpl value,
          $Res Function(_$AttandanceTodayImpl) then) =
      __$$AttandanceTodayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') DataResponse? data});

  @override
  $DataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AttandanceTodayImplCopyWithImpl<$Res>
    extends _$AttandanceTodayCopyWithImpl<$Res, _$AttandanceTodayImpl>
    implements _$$AttandanceTodayImplCopyWith<$Res> {
  __$$AttandanceTodayImplCopyWithImpl(
      _$AttandanceTodayImpl _value, $Res Function(_$AttandanceTodayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AttandanceTodayImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttandanceTodayImpl implements _AttandanceToday {
  _$AttandanceTodayImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'data') this.data});

  factory _$AttandanceTodayImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttandanceTodayImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'data')
  final DataResponse? data;

  @override
  String toString() {
    return 'AttandanceToday(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttandanceTodayImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttandanceTodayImplCopyWith<_$AttandanceTodayImpl> get copyWith =>
      __$$AttandanceTodayImplCopyWithImpl<_$AttandanceTodayImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttandanceTodayImplToJson(
      this,
    );
  }
}

abstract class _AttandanceToday implements AttandanceToday {
  factory _AttandanceToday(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'data') final DataResponse? data}) = _$AttandanceTodayImpl;

  factory _AttandanceToday.fromJson(Map<String, dynamic> json) =
      _$AttandanceTodayImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'data')
  DataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$AttandanceTodayImplCopyWith<_$AttandanceTodayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) {
  return _DataResponse.fromJson(json);
}

/// @nodoc
mixin _$DataResponse {
  @JsonKey(name: 'attendance_id')
  int? get attendanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'checks')
  List<ChecksData>? get checks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataResponseCopyWith<DataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseCopyWith<$Res> {
  factory $DataResponseCopyWith(
          DataResponse value, $Res Function(DataResponse) then) =
      _$DataResponseCopyWithImpl<$Res, DataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'checks') List<ChecksData>? checks});
}

/// @nodoc
class _$DataResponseCopyWithImpl<$Res, $Val extends DataResponse>
    implements $DataResponseCopyWith<$Res> {
  _$DataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = freezed,
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? checks = freezed,
  }) {
    return _then(_value.copyWith(
      attendanceId: freezed == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      checks: freezed == checks
          ? _value.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as List<ChecksData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataResponseImplCopyWith<$Res>
    implements $DataResponseCopyWith<$Res> {
  factory _$$DataResponseImplCopyWith(
          _$DataResponseImpl value, $Res Function(_$DataResponseImpl) then) =
      __$$DataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'checks') List<ChecksData>? checks});
}

/// @nodoc
class __$$DataResponseImplCopyWithImpl<$Res>
    extends _$DataResponseCopyWithImpl<$Res, _$DataResponseImpl>
    implements _$$DataResponseImplCopyWith<$Res> {
  __$$DataResponseImplCopyWithImpl(
      _$DataResponseImpl _value, $Res Function(_$DataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = freezed,
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? checks = freezed,
  }) {
    return _then(_$DataResponseImpl(
      attendanceId: freezed == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      checks: freezed == checks
          ? _value._checks
          : checks // ignore: cast_nullable_to_non_nullable
              as List<ChecksData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataResponseImpl implements _DataResponse {
  _$DataResponseImpl(
      {@JsonKey(name: 'attendance_id') this.attendanceId,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'checks') final List<ChecksData>? checks})
      : _checks = checks;

  factory _$DataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final int? attendanceId;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'to')
  final String? to;
  final List<ChecksData>? _checks;
  @override
  @JsonKey(name: 'checks')
  List<ChecksData>? get checks {
    final value = _checks;
    if (value == null) return null;
    if (_checks is EqualUnmodifiableListView) return _checks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataResponse(attendanceId: $attendanceId, date: $date, from: $from, to: $to, checks: $checks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataResponseImpl &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            const DeepCollectionEquality().equals(other._checks, _checks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attendanceId, date, from, to,
      const DeepCollectionEquality().hash(_checks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataResponseImplCopyWith<_$DataResponseImpl> get copyWith =>
      __$$DataResponseImplCopyWithImpl<_$DataResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataResponseImplToJson(
      this,
    );
  }
}

abstract class _DataResponse implements DataResponse {
  factory _DataResponse(
          {@JsonKey(name: 'attendance_id') final int? attendanceId,
          @JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'from') final String? from,
          @JsonKey(name: 'to') final String? to,
          @JsonKey(name: 'checks') final List<ChecksData>? checks}) =
      _$DataResponseImpl;

  factory _DataResponse.fromJson(Map<String, dynamic> json) =
      _$DataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  int? get attendanceId;
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
  @JsonKey(name: 'checks')
  List<ChecksData>? get checks;
  @override
  @JsonKey(ignore: true)
  _$$DataResponseImplCopyWith<_$DataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChecksData _$ChecksDataFromJson(Map<String, dynamic> json) {
  return _ChecksData.fromJson(json);
}

/// @nodoc
mixin _$ChecksData {
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChecksDataCopyWith<ChecksData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecksDataCopyWith<$Res> {
  factory $ChecksDataCopyWith(
          ChecksData value, $Res Function(ChecksData) then) =
      _$ChecksDataCopyWithImpl<$Res, ChecksData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time') String? time,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$ChecksDataCopyWithImpl<$Res, $Val extends ChecksData>
    implements $ChecksDataCopyWith<$Res> {
  _$ChecksDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChecksDataImplCopyWith<$Res>
    implements $ChecksDataCopyWith<$Res> {
  factory _$$ChecksDataImplCopyWith(
          _$ChecksDataImpl value, $Res Function(_$ChecksDataImpl) then) =
      __$$ChecksDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time') String? time,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$ChecksDataImplCopyWithImpl<$Res>
    extends _$ChecksDataCopyWithImpl<$Res, _$ChecksDataImpl>
    implements _$$ChecksDataImplCopyWith<$Res> {
  __$$ChecksDataImplCopyWithImpl(
      _$ChecksDataImpl _value, $Res Function(_$ChecksDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ChecksDataImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecksDataImpl implements _ChecksData {
  _$ChecksDataImpl(
      {@JsonKey(name: 'time') this.time,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'status') this.status});

  factory _$ChecksDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecksDataImplFromJson(json);

  @override
  @JsonKey(name: 'time')
  final String? time;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'ChecksData(time: $time, type: $type, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecksDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, type, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecksDataImplCopyWith<_$ChecksDataImpl> get copyWith =>
      __$$ChecksDataImplCopyWithImpl<_$ChecksDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecksDataImplToJson(
      this,
    );
  }
}

abstract class _ChecksData implements ChecksData {
  factory _ChecksData(
      {@JsonKey(name: 'time') final String? time,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'status') final String? status}) = _$ChecksDataImpl;

  factory _ChecksData.fromJson(Map<String, dynamic> json) =
      _$ChecksDataImpl.fromJson;

  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$ChecksDataImplCopyWith<_$ChecksDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
