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
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_in')
  String? get checkIn => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'check_in') String? checkIn});
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
    Object? date = freezed,
    Object? checkIn = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'check_in') String? checkIn});
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
    Object? date = freezed,
    Object? checkIn = freezed,
  }) {
    return _then(_$DataResponseImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataResponseImpl implements _DataResponse {
  _$DataResponseImpl(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'check_in') this.checkIn});

  factory _$DataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'check_in')
  final String? checkIn;

  @override
  String toString() {
    return 'DataResponse(date: $date, checkIn: $checkIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataResponseImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, checkIn);

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
      {@JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'check_in') final String? checkIn}) = _$DataResponseImpl;

  factory _DataResponse.fromJson(Map<String, dynamic> json) =
      _$DataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'check_in')
  String? get checkIn;
  @override
  @JsonKey(ignore: true)
  _$$DataResponseImplCopyWith<_$DataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
