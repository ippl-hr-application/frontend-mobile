// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShiftCompanyResponse _$ShiftCompanyResponseFromJson(Map<String, dynamic> json) {
  return _ShiftCompanyResponse.fromJson(json);
}

/// @nodoc
mixin _$ShiftCompanyResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Shift? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftCompanyResponseCopyWith<ShiftCompanyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftCompanyResponseCopyWith<$Res> {
  factory $ShiftCompanyResponseCopyWith(ShiftCompanyResponse value,
          $Res Function(ShiftCompanyResponse) then) =
      _$ShiftCompanyResponseCopyWithImpl<$Res, ShiftCompanyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Shift? data});

  $ShiftCopyWith<$Res>? get data;
}

/// @nodoc
class _$ShiftCompanyResponseCopyWithImpl<$Res,
        $Val extends ShiftCompanyResponse>
    implements $ShiftCompanyResponseCopyWith<$Res> {
  _$ShiftCompanyResponseCopyWithImpl(this._value, this._then);

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
              as Shift?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShiftCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ShiftCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShiftCompanyResponseImplCopyWith<$Res>
    implements $ShiftCompanyResponseCopyWith<$Res> {
  factory _$$ShiftCompanyResponseImplCopyWith(_$ShiftCompanyResponseImpl value,
          $Res Function(_$ShiftCompanyResponseImpl) then) =
      __$$ShiftCompanyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Shift? data});

  @override
  $ShiftCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShiftCompanyResponseImplCopyWithImpl<$Res>
    extends _$ShiftCompanyResponseCopyWithImpl<$Res, _$ShiftCompanyResponseImpl>
    implements _$$ShiftCompanyResponseImplCopyWith<$Res> {
  __$$ShiftCompanyResponseImplCopyWithImpl(_$ShiftCompanyResponseImpl _value,
      $Res Function(_$ShiftCompanyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ShiftCompanyResponseImpl(
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
              as Shift?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftCompanyResponseImpl implements _ShiftCompanyResponse {
  _$ShiftCompanyResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$ShiftCompanyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftCompanyResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final Shift? data;

  @override
  String toString() {
    return 'ShiftCompanyResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftCompanyResponseImpl &&
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
  _$$ShiftCompanyResponseImplCopyWith<_$ShiftCompanyResponseImpl>
      get copyWith =>
          __$$ShiftCompanyResponseImplCopyWithImpl<_$ShiftCompanyResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftCompanyResponseImplToJson(
      this,
    );
  }
}

abstract class _ShiftCompanyResponse implements ShiftCompanyResponse {
  factory _ShiftCompanyResponse(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final Shift? data}) = _$ShiftCompanyResponseImpl;

  factory _ShiftCompanyResponse.fromJson(Map<String, dynamic> json) =
      _$ShiftCompanyResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  Shift? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShiftCompanyResponseImplCopyWith<_$ShiftCompanyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Shift _$ShiftFromJson(Map<String, dynamic> json) {
  return _Shift.fromJson(json);
}

/// @nodoc
mixin _$Shift {
  @JsonKey(name: 'shifts')
  List<DataShift>? get shifts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftCopyWith<Shift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftCopyWith<$Res> {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) then) =
      _$ShiftCopyWithImpl<$Res, Shift>;
  @useResult
  $Res call({@JsonKey(name: 'shifts') List<DataShift>? shifts});
}

/// @nodoc
class _$ShiftCopyWithImpl<$Res, $Val extends Shift>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shifts = freezed,
  }) {
    return _then(_value.copyWith(
      shifts: freezed == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<DataShift>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiftImplCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$$ShiftImplCopyWith(
          _$ShiftImpl value, $Res Function(_$ShiftImpl) then) =
      __$$ShiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'shifts') List<DataShift>? shifts});
}

/// @nodoc
class __$$ShiftImplCopyWithImpl<$Res>
    extends _$ShiftCopyWithImpl<$Res, _$ShiftImpl>
    implements _$$ShiftImplCopyWith<$Res> {
  __$$ShiftImplCopyWithImpl(
      _$ShiftImpl _value, $Res Function(_$ShiftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shifts = freezed,
  }) {
    return _then(_$ShiftImpl(
      shifts: freezed == shifts
          ? _value._shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<DataShift>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftImpl implements _Shift {
  _$ShiftImpl({@JsonKey(name: 'shifts') final List<DataShift>? shifts})
      : _shifts = shifts;

  factory _$ShiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftImplFromJson(json);

  final List<DataShift>? _shifts;
  @override
  @JsonKey(name: 'shifts')
  List<DataShift>? get shifts {
    final value = _shifts;
    if (value == null) return null;
    if (_shifts is EqualUnmodifiableListView) return _shifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Shift(shifts: $shifts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftImpl &&
            const DeepCollectionEquality().equals(other._shifts, _shifts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shifts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftImplCopyWith<_$ShiftImpl> get copyWith =>
      __$$ShiftImplCopyWithImpl<_$ShiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftImplToJson(
      this,
    );
  }
}

abstract class _Shift implements Shift {
  factory _Shift({@JsonKey(name: 'shifts') final List<DataShift>? shifts}) =
      _$ShiftImpl;

  factory _Shift.fromJson(Map<String, dynamic> json) = _$ShiftImpl.fromJson;

  @override
  @JsonKey(name: 'shifts')
  List<DataShift>? get shifts;
  @override
  @JsonKey(ignore: true)
  _$$ShiftImplCopyWith<_$ShiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataShift _$DataShiftFromJson(Map<String, dynamic> json) {
  return _DataShift.fromJson(json);
}

/// @nodoc
mixin _$DataShift {
  @JsonKey(name: 'shift_id')
  int? get shift_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_branch_id')
  String? get companyBranchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataShiftCopyWith<DataShift> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataShiftCopyWith<$Res> {
  factory $DataShiftCopyWith(DataShift value, $Res Function(DataShift) then) =
      _$DataShiftCopyWithImpl<$Res, DataShift>;
  @useResult
  $Res call(
      {@JsonKey(name: 'shift_id') int? shift_id,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime});
}

/// @nodoc
class _$DataShiftCopyWithImpl<$Res, $Val extends DataShift>
    implements $DataShiftCopyWith<$Res> {
  _$DataShiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shift_id = freezed,
    Object? companyBranchId = freezed,
    Object? name = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      shift_id: freezed == shift_id
          ? _value.shift_id
          : shift_id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyBranchId: freezed == companyBranchId
          ? _value.companyBranchId
          : companyBranchId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataShiftImplCopyWith<$Res>
    implements $DataShiftCopyWith<$Res> {
  factory _$$DataShiftImplCopyWith(
          _$DataShiftImpl value, $Res Function(_$DataShiftImpl) then) =
      __$$DataShiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'shift_id') int? shift_id,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime});
}

/// @nodoc
class __$$DataShiftImplCopyWithImpl<$Res>
    extends _$DataShiftCopyWithImpl<$Res, _$DataShiftImpl>
    implements _$$DataShiftImplCopyWith<$Res> {
  __$$DataShiftImplCopyWithImpl(
      _$DataShiftImpl _value, $Res Function(_$DataShiftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shift_id = freezed,
    Object? companyBranchId = freezed,
    Object? name = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$DataShiftImpl(
      shift_id: freezed == shift_id
          ? _value.shift_id
          : shift_id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyBranchId: freezed == companyBranchId
          ? _value.companyBranchId
          : companyBranchId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataShiftImpl implements _DataShift {
  _$DataShiftImpl(
      {@JsonKey(name: 'shift_id') this.shift_id,
      @JsonKey(name: 'company_branch_id') this.companyBranchId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime});

  factory _$DataShiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataShiftImplFromJson(json);

  @override
  @JsonKey(name: 'shift_id')
  final int? shift_id;
  @override
  @JsonKey(name: 'company_branch_id')
  final String? companyBranchId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;

  @override
  String toString() {
    return 'DataShift(shift_id: $shift_id, companyBranchId: $companyBranchId, name: $name, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataShiftImpl &&
            (identical(other.shift_id, shift_id) ||
                other.shift_id == shift_id) &&
            (identical(other.companyBranchId, companyBranchId) ||
                other.companyBranchId == companyBranchId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, shift_id, companyBranchId, name, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataShiftImplCopyWith<_$DataShiftImpl> get copyWith =>
      __$$DataShiftImplCopyWithImpl<_$DataShiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataShiftImplToJson(
      this,
    );
  }
}

abstract class _DataShift implements DataShift {
  factory _DataShift(
      {@JsonKey(name: 'shift_id') final int? shift_id,
      @JsonKey(name: 'company_branch_id') final String? companyBranchId,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'start_time') final String? startTime,
      @JsonKey(name: 'end_time') final String? endTime}) = _$DataShiftImpl;

  factory _DataShift.fromJson(Map<String, dynamic> json) =
      _$DataShiftImpl.fromJson;

  @override
  @JsonKey(name: 'shift_id')
  int? get shift_id;
  @override
  @JsonKey(name: 'company_branch_id')
  String? get companyBranchId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$DataShiftImplCopyWith<_$DataShiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
