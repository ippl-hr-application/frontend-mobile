// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attandance_recap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttandanceRecap _$AttandanceRecapFromJson(Map<String, dynamic> json) {
  return _AttandanceRecap.fromJson(json);
}

/// @nodoc
mixin _$AttandanceRecap {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataRecap? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttandanceRecapCopyWith<AttandanceRecap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttandanceRecapCopyWith<$Res> {
  factory $AttandanceRecapCopyWith(
          AttandanceRecap value, $Res Function(AttandanceRecap) then) =
      _$AttandanceRecapCopyWithImpl<$Res, AttandanceRecap>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataRecap? data});

  $DataRecapCopyWith<$Res>? get data;
}

/// @nodoc
class _$AttandanceRecapCopyWithImpl<$Res, $Val extends AttandanceRecap>
    implements $AttandanceRecapCopyWith<$Res> {
  _$AttandanceRecapCopyWithImpl(this._value, this._then);

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
              as DataRecap?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataRecapCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataRecapCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttandanceRecapImplCopyWith<$Res>
    implements $AttandanceRecapCopyWith<$Res> {
  factory _$$AttandanceRecapImplCopyWith(_$AttandanceRecapImpl value,
          $Res Function(_$AttandanceRecapImpl) then) =
      __$$AttandanceRecapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataRecap? data});

  @override
  $DataRecapCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AttandanceRecapImplCopyWithImpl<$Res>
    extends _$AttandanceRecapCopyWithImpl<$Res, _$AttandanceRecapImpl>
    implements _$$AttandanceRecapImplCopyWith<$Res> {
  __$$AttandanceRecapImplCopyWithImpl(
      _$AttandanceRecapImpl _value, $Res Function(_$AttandanceRecapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AttandanceRecapImpl(
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
              as DataRecap?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttandanceRecapImpl implements _AttandanceRecap {
  _$AttandanceRecapImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$AttandanceRecapImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttandanceRecapImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final DataRecap? data;

  @override
  String toString() {
    return 'AttandanceRecap(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttandanceRecapImpl &&
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
  _$$AttandanceRecapImplCopyWith<_$AttandanceRecapImpl> get copyWith =>
      __$$AttandanceRecapImplCopyWithImpl<_$AttandanceRecapImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttandanceRecapImplToJson(
      this,
    );
  }
}

abstract class _AttandanceRecap implements AttandanceRecap {
  factory _AttandanceRecap(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final DataRecap? data}) = _$AttandanceRecapImpl;

  factory _AttandanceRecap.fromJson(Map<String, dynamic> json) =
      _$AttandanceRecapImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  DataRecap? get data;
  @override
  @JsonKey(ignore: true)
  _$$AttandanceRecapImplCopyWith<_$AttandanceRecapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataRecap _$DataRecapFromJson(Map<String, dynamic> json) {
  return _DataRecap.fromJson(json);
}

/// @nodoc
mixin _$DataRecap {
  @JsonKey(name: 'detail')
  List<DetailRecap>? get detail => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_absences')
  int? get numberAbsences => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_attendees')
  int? get numberAttendees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataRecapCopyWith<DataRecap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRecapCopyWith<$Res> {
  factory $DataRecapCopyWith(DataRecap value, $Res Function(DataRecap) then) =
      _$DataRecapCopyWithImpl<$Res, DataRecap>;
  @useResult
  $Res call(
      {@JsonKey(name: 'detail') List<DetailRecap>? detail,
      @JsonKey(name: 'number_of_absences') int? numberAbsences,
      @JsonKey(name: 'number_of_attendees') int? numberAttendees});
}

/// @nodoc
class _$DataRecapCopyWithImpl<$Res, $Val extends DataRecap>
    implements $DataRecapCopyWith<$Res> {
  _$DataRecapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
    Object? numberAbsences = freezed,
    Object? numberAttendees = freezed,
  }) {
    return _then(_value.copyWith(
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<DetailRecap>?,
      numberAbsences: freezed == numberAbsences
          ? _value.numberAbsences
          : numberAbsences // ignore: cast_nullable_to_non_nullable
              as int?,
      numberAttendees: freezed == numberAttendees
          ? _value.numberAttendees
          : numberAttendees // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataRecapImplCopyWith<$Res>
    implements $DataRecapCopyWith<$Res> {
  factory _$$DataRecapImplCopyWith(
          _$DataRecapImpl value, $Res Function(_$DataRecapImpl) then) =
      __$$DataRecapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'detail') List<DetailRecap>? detail,
      @JsonKey(name: 'number_of_absences') int? numberAbsences,
      @JsonKey(name: 'number_of_attendees') int? numberAttendees});
}

/// @nodoc
class __$$DataRecapImplCopyWithImpl<$Res>
    extends _$DataRecapCopyWithImpl<$Res, _$DataRecapImpl>
    implements _$$DataRecapImplCopyWith<$Res> {
  __$$DataRecapImplCopyWithImpl(
      _$DataRecapImpl _value, $Res Function(_$DataRecapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
    Object? numberAbsences = freezed,
    Object? numberAttendees = freezed,
  }) {
    return _then(_$DataRecapImpl(
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<DetailRecap>?,
      numberAbsences: freezed == numberAbsences
          ? _value.numberAbsences
          : numberAbsences // ignore: cast_nullable_to_non_nullable
              as int?,
      numberAttendees: freezed == numberAttendees
          ? _value.numberAttendees
          : numberAttendees // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataRecapImpl implements _DataRecap {
  _$DataRecapImpl(
      {@JsonKey(name: 'detail') final List<DetailRecap>? detail,
      @JsonKey(name: 'number_of_absences') this.numberAbsences,
      @JsonKey(name: 'number_of_attendees') this.numberAttendees})
      : _detail = detail;

  factory _$DataRecapImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataRecapImplFromJson(json);

  final List<DetailRecap>? _detail;
  @override
  @JsonKey(name: 'detail')
  List<DetailRecap>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'number_of_absences')
  final int? numberAbsences;
  @override
  @JsonKey(name: 'number_of_attendees')
  final int? numberAttendees;

  @override
  String toString() {
    return 'DataRecap(detail: $detail, numberAbsences: $numberAbsences, numberAttendees: $numberAttendees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataRecapImpl &&
            const DeepCollectionEquality().equals(other._detail, _detail) &&
            (identical(other.numberAbsences, numberAbsences) ||
                other.numberAbsences == numberAbsences) &&
            (identical(other.numberAttendees, numberAttendees) ||
                other.numberAttendees == numberAttendees));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_detail),
      numberAbsences,
      numberAttendees);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataRecapImplCopyWith<_$DataRecapImpl> get copyWith =>
      __$$DataRecapImplCopyWithImpl<_$DataRecapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataRecapImplToJson(
      this,
    );
  }
}

abstract class _DataRecap implements DataRecap {
  factory _DataRecap(
          {@JsonKey(name: 'detail') final List<DetailRecap>? detail,
          @JsonKey(name: 'number_of_absences') final int? numberAbsences,
          @JsonKey(name: 'number_of_attendees') final int? numberAttendees}) =
      _$DataRecapImpl;

  factory _DataRecap.fromJson(Map<String, dynamic> json) =
      _$DataRecapImpl.fromJson;

  @override
  @JsonKey(name: 'detail')
  List<DetailRecap>? get detail;
  @override
  @JsonKey(name: 'number_of_absences')
  int? get numberAbsences;
  @override
  @JsonKey(name: 'number_of_attendees')
  int? get numberAttendees;
  @override
  @JsonKey(ignore: true)
  _$$DataRecapImplCopyWith<_$DataRecapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailRecap _$DetailRecapFromJson(Map<String, dynamic> json) {
  return _DetailRecap.fromJson(json);
}

/// @nodoc
mixin _$DetailRecap {
  @JsonKey(name: 'attendance_id')
  int? get attendanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPresent')
  bool? get isPresent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailRecapCopyWith<DetailRecap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRecapCopyWith<$Res> {
  factory $DetailRecapCopyWith(
          DetailRecap value, $Res Function(DetailRecap) then) =
      _$DetailRecapCopyWithImpl<$Res, DetailRecap>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'isPresent') bool? isPresent});
}

/// @nodoc
class _$DetailRecapCopyWithImpl<$Res, $Val extends DetailRecap>
    implements $DetailRecapCopyWith<$Res> {
  _$DetailRecapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = freezed,
    Object? date = freezed,
    Object? isPresent = freezed,
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
      isPresent: freezed == isPresent
          ? _value.isPresent
          : isPresent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailRecapImplCopyWith<$Res>
    implements $DetailRecapCopyWith<$Res> {
  factory _$$DetailRecapImplCopyWith(
          _$DetailRecapImpl value, $Res Function(_$DetailRecapImpl) then) =
      __$$DetailRecapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'isPresent') bool? isPresent});
}

/// @nodoc
class __$$DetailRecapImplCopyWithImpl<$Res>
    extends _$DetailRecapCopyWithImpl<$Res, _$DetailRecapImpl>
    implements _$$DetailRecapImplCopyWith<$Res> {
  __$$DetailRecapImplCopyWithImpl(
      _$DetailRecapImpl _value, $Res Function(_$DetailRecapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = freezed,
    Object? date = freezed,
    Object? isPresent = freezed,
  }) {
    return _then(_$DetailRecapImpl(
      attendanceId: freezed == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      isPresent: freezed == isPresent
          ? _value.isPresent
          : isPresent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailRecapImpl implements _DetailRecap {
  _$DetailRecapImpl(
      {@JsonKey(name: 'attendance_id') this.attendanceId,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'isPresent') this.isPresent});

  factory _$DetailRecapImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailRecapImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final int? attendanceId;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'isPresent')
  final bool? isPresent;

  @override
  String toString() {
    return 'DetailRecap(attendanceId: $attendanceId, date: $date, isPresent: $isPresent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRecapImpl &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isPresent, isPresent) ||
                other.isPresent == isPresent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attendanceId, date, isPresent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailRecapImplCopyWith<_$DetailRecapImpl> get copyWith =>
      __$$DetailRecapImplCopyWithImpl<_$DetailRecapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailRecapImplToJson(
      this,
    );
  }
}

abstract class _DetailRecap implements DetailRecap {
  factory _DetailRecap(
      {@JsonKey(name: 'attendance_id') final int? attendanceId,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'isPresent') final bool? isPresent}) = _$DetailRecapImpl;

  factory _DetailRecap.fromJson(Map<String, dynamic> json) =
      _$DetailRecapImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  int? get attendanceId;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'isPresent')
  bool? get isPresent;
  @override
  @JsonKey(ignore: true)
  _$$DetailRecapImplCopyWith<_$DetailRecapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
