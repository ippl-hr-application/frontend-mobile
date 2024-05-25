// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attandance_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttandanceHistoryDate _$AttandanceHistoryDateFromJson(
    Map<String, dynamic> json) {
  return _AttandanceHistoryDate.fromJson(json);
}

/// @nodoc
mixin _$AttandanceHistoryDate {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataHistory? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttandanceHistoryDateCopyWith<AttandanceHistoryDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttandanceHistoryDateCopyWith<$Res> {
  factory $AttandanceHistoryDateCopyWith(AttandanceHistoryDate value,
          $Res Function(AttandanceHistoryDate) then) =
      _$AttandanceHistoryDateCopyWithImpl<$Res, AttandanceHistoryDate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataHistory? data});

  $DataHistoryCopyWith<$Res>? get data;
}

/// @nodoc
class _$AttandanceHistoryDateCopyWithImpl<$Res,
        $Val extends AttandanceHistoryDate>
    implements $AttandanceHistoryDateCopyWith<$Res> {
  _$AttandanceHistoryDateCopyWithImpl(this._value, this._then);

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
              as DataHistory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataHistoryCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataHistoryCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttandanceHistoryDateImplCopyWith<$Res>
    implements $AttandanceHistoryDateCopyWith<$Res> {
  factory _$$AttandanceHistoryDateImplCopyWith(
          _$AttandanceHistoryDateImpl value,
          $Res Function(_$AttandanceHistoryDateImpl) then) =
      __$$AttandanceHistoryDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataHistory? data});

  @override
  $DataHistoryCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AttandanceHistoryDateImplCopyWithImpl<$Res>
    extends _$AttandanceHistoryDateCopyWithImpl<$Res,
        _$AttandanceHistoryDateImpl>
    implements _$$AttandanceHistoryDateImplCopyWith<$Res> {
  __$$AttandanceHistoryDateImplCopyWithImpl(_$AttandanceHistoryDateImpl _value,
      $Res Function(_$AttandanceHistoryDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AttandanceHistoryDateImpl(
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
              as DataHistory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttandanceHistoryDateImpl implements _AttandanceHistoryDate {
  _$AttandanceHistoryDateImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$AttandanceHistoryDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttandanceHistoryDateImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final DataHistory? data;

  @override
  String toString() {
    return 'AttandanceHistoryDate(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttandanceHistoryDateImpl &&
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
  _$$AttandanceHistoryDateImplCopyWith<_$AttandanceHistoryDateImpl>
      get copyWith => __$$AttandanceHistoryDateImplCopyWithImpl<
          _$AttandanceHistoryDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttandanceHistoryDateImplToJson(
      this,
    );
  }
}

abstract class _AttandanceHistoryDate implements AttandanceHistoryDate {
  factory _AttandanceHistoryDate(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final DataHistory? data}) =
      _$AttandanceHistoryDateImpl;

  factory _AttandanceHistoryDate.fromJson(Map<String, dynamic> json) =
      _$AttandanceHistoryDateImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  DataHistory? get data;
  @override
  @JsonKey(ignore: true)
  _$$AttandanceHistoryDateImplCopyWith<_$AttandanceHistoryDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataHistory _$DataHistoryFromJson(Map<String, dynamic> json) {
  return _DataHistory.fromJson(json);
}

/// @nodoc
mixin _$DataHistory {
  @JsonKey(name: 'attendance_id')
  int? get attendanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_in_time')
  String? get checkInTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataHistoryCopyWith<DataHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataHistoryCopyWith<$Res> {
  factory $DataHistoryCopyWith(
          DataHistory value, $Res Function(DataHistory) then) =
      _$DataHistoryCopyWithImpl<$Res, DataHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'check_in_time') String? checkInTime});
}

/// @nodoc
class _$DataHistoryCopyWithImpl<$Res, $Val extends DataHistory>
    implements $DataHistoryCopyWith<$Res> {
  _$DataHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? checkInTime = freezed,
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
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataHistoryImplCopyWith<$Res>
    implements $DataHistoryCopyWith<$Res> {
  factory _$$DataHistoryImplCopyWith(
          _$DataHistoryImpl value, $Res Function(_$DataHistoryImpl) then) =
      __$$DataHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'check_in_time') String? checkInTime});
}

/// @nodoc
class __$$DataHistoryImplCopyWithImpl<$Res>
    extends _$DataHistoryCopyWithImpl<$Res, _$DataHistoryImpl>
    implements _$$DataHistoryImplCopyWith<$Res> {
  __$$DataHistoryImplCopyWithImpl(
      _$DataHistoryImpl _value, $Res Function(_$DataHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? checkInTime = freezed,
  }) {
    return _then(_$DataHistoryImpl(
      attendanceId: freezed == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataHistoryImpl implements _DataHistory {
  _$DataHistoryImpl(
      {@JsonKey(name: 'attendance_id') this.attendanceId,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'check_in_time') this.checkInTime});

  factory _$DataHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataHistoryImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final int? attendanceId;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'check_in_time')
  final String? checkInTime;

  @override
  String toString() {
    return 'DataHistory(attendanceId: $attendanceId, date: $date, startTime: $startTime, endTime: $endTime, checkInTime: $checkInTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataHistoryImpl &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, attendanceId, date, startTime, endTime, checkInTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataHistoryImplCopyWith<_$DataHistoryImpl> get copyWith =>
      __$$DataHistoryImplCopyWithImpl<_$DataHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataHistoryImplToJson(
      this,
    );
  }
}

abstract class _DataHistory implements DataHistory {
  factory _DataHistory(
          {@JsonKey(name: 'attendance_id') final int? attendanceId,
          @JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'start_time') final String? startTime,
          @JsonKey(name: 'end_time') final String? endTime,
          @JsonKey(name: 'check_in_time') final String? checkInTime}) =
      _$DataHistoryImpl;

  factory _DataHistory.fromJson(Map<String, dynamic> json) =
      _$DataHistoryImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  int? get attendanceId;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'check_in_time')
  String? get checkInTime;
  @override
  @JsonKey(ignore: true)
  _$$DataHistoryImplCopyWith<_$DataHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
