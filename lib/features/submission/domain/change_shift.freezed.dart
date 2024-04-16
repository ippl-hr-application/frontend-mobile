// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_shift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeShiftRequest _$ChangeShiftRequestFromJson(Map<String, dynamic> json) {
  return _ChangeShiftRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangeShiftRequest {
  @JsonKey(name: 'target_date')
  String get targetDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_shift_id')
  int get currentShift => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_shift_id')
  int get targetShift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeShiftRequestCopyWith<ChangeShiftRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeShiftRequestCopyWith<$Res> {
  factory $ChangeShiftRequestCopyWith(
          ChangeShiftRequest value, $Res Function(ChangeShiftRequest) then) =
      _$ChangeShiftRequestCopyWithImpl<$Res, ChangeShiftRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'target_date') String targetDate,
      @JsonKey(name: 'current_shift_id') int currentShift,
      @JsonKey(name: 'target_shift_id') int targetShift});
}

/// @nodoc
class _$ChangeShiftRequestCopyWithImpl<$Res, $Val extends ChangeShiftRequest>
    implements $ChangeShiftRequestCopyWith<$Res> {
  _$ChangeShiftRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetDate = null,
    Object? currentShift = null,
    Object? targetShift = null,
  }) {
    return _then(_value.copyWith(
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as String,
      currentShift: null == currentShift
          ? _value.currentShift
          : currentShift // ignore: cast_nullable_to_non_nullable
              as int,
      targetShift: null == targetShift
          ? _value.targetShift
          : targetShift // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeShiftRequestImplCopyWith<$Res>
    implements $ChangeShiftRequestCopyWith<$Res> {
  factory _$$ChangeShiftRequestImplCopyWith(_$ChangeShiftRequestImpl value,
          $Res Function(_$ChangeShiftRequestImpl) then) =
      __$$ChangeShiftRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'target_date') String targetDate,
      @JsonKey(name: 'current_shift_id') int currentShift,
      @JsonKey(name: 'target_shift_id') int targetShift});
}

/// @nodoc
class __$$ChangeShiftRequestImplCopyWithImpl<$Res>
    extends _$ChangeShiftRequestCopyWithImpl<$Res, _$ChangeShiftRequestImpl>
    implements _$$ChangeShiftRequestImplCopyWith<$Res> {
  __$$ChangeShiftRequestImplCopyWithImpl(_$ChangeShiftRequestImpl _value,
      $Res Function(_$ChangeShiftRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetDate = null,
    Object? currentShift = null,
    Object? targetShift = null,
  }) {
    return _then(_$ChangeShiftRequestImpl(
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as String,
      currentShift: null == currentShift
          ? _value.currentShift
          : currentShift // ignore: cast_nullable_to_non_nullable
              as int,
      targetShift: null == targetShift
          ? _value.targetShift
          : targetShift // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeShiftRequestImpl implements _ChangeShiftRequest {
  _$ChangeShiftRequestImpl(
      {@JsonKey(name: 'target_date') required this.targetDate,
      @JsonKey(name: 'current_shift_id') required this.currentShift,
      @JsonKey(name: 'target_shift_id') required this.targetShift});

  factory _$ChangeShiftRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeShiftRequestImplFromJson(json);

  @override
  @JsonKey(name: 'target_date')
  final String targetDate;
  @override
  @JsonKey(name: 'current_shift_id')
  final int currentShift;
  @override
  @JsonKey(name: 'target_shift_id')
  final int targetShift;

  @override
  String toString() {
    return 'ChangeShiftRequest(targetDate: $targetDate, currentShift: $currentShift, targetShift: $targetShift)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeShiftRequestImpl &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate) &&
            (identical(other.currentShift, currentShift) ||
                other.currentShift == currentShift) &&
            (identical(other.targetShift, targetShift) ||
                other.targetShift == targetShift));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, targetDate, currentShift, targetShift);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeShiftRequestImplCopyWith<_$ChangeShiftRequestImpl> get copyWith =>
      __$$ChangeShiftRequestImplCopyWithImpl<_$ChangeShiftRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeShiftRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangeShiftRequest implements ChangeShiftRequest {
  factory _ChangeShiftRequest(
          {@JsonKey(name: 'target_date') required final String targetDate,
          @JsonKey(name: 'current_shift_id') required final int currentShift,
          @JsonKey(name: 'target_shift_id') required final int targetShift}) =
      _$ChangeShiftRequestImpl;

  factory _ChangeShiftRequest.fromJson(Map<String, dynamic> json) =
      _$ChangeShiftRequestImpl.fromJson;

  @override
  @JsonKey(name: 'target_date')
  String get targetDate;
  @override
  @JsonKey(name: 'current_shift_id')
  int get currentShift;
  @override
  @JsonKey(name: 'target_shift_id')
  int get targetShift;
  @override
  @JsonKey(ignore: true)
  _$$ChangeShiftRequestImplCopyWith<_$ChangeShiftRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeShiftResponse _$ChangeShiftResponseFromJson(Map<String, dynamic> json) {
  return _ChangeShiftResponse.fromJson(json);
}

/// @nodoc
mixin _$ChangeShiftResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeShiftResponseCopyWith<ChangeShiftResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeShiftResponseCopyWith<$Res> {
  factory $ChangeShiftResponseCopyWith(
          ChangeShiftResponse value, $Res Function(ChangeShiftResponse) then) =
      _$ChangeShiftResponseCopyWithImpl<$Res, ChangeShiftResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'data') Data data,
      @JsonKey(name: 'message') String message});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ChangeShiftResponseCopyWithImpl<$Res, $Val extends ChangeShiftResponse>
    implements $ChangeShiftResponseCopyWith<$Res> {
  _$ChangeShiftResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeShiftResponseImplCopyWith<$Res>
    implements $ChangeShiftResponseCopyWith<$Res> {
  factory _$$ChangeShiftResponseImplCopyWith(_$ChangeShiftResponseImpl value,
          $Res Function(_$ChangeShiftResponseImpl) then) =
      __$$ChangeShiftResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'data') Data data,
      @JsonKey(name: 'message') String message});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChangeShiftResponseImplCopyWithImpl<$Res>
    extends _$ChangeShiftResponseCopyWithImpl<$Res, _$ChangeShiftResponseImpl>
    implements _$$ChangeShiftResponseImplCopyWith<$Res> {
  __$$ChangeShiftResponseImplCopyWithImpl(_$ChangeShiftResponseImpl _value,
      $Res Function(_$ChangeShiftResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ChangeShiftResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeShiftResponseImpl implements _ChangeShiftResponse {
  _$ChangeShiftResponseImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'message') required this.message});

  factory _$ChangeShiftResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeShiftResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'data')
  final Data data;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'ChangeShiftResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeShiftResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeShiftResponseImplCopyWith<_$ChangeShiftResponseImpl> get copyWith =>
      __$$ChangeShiftResponseImplCopyWithImpl<_$ChangeShiftResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeShiftResponseImplToJson(
      this,
    );
  }
}

abstract class _ChangeShiftResponse implements ChangeShiftResponse {
  factory _ChangeShiftResponse(
          {@JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'data') required final Data data,
          @JsonKey(name: 'message') required final String message}) =
      _$ChangeShiftResponseImpl;

  factory _ChangeShiftResponse.fromJson(Map<String, dynamic> json) =
      _$ChangeShiftResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'data')
  Data get data;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ChangeShiftResponseImplCopyWith<_$ChangeShiftResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'result')
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: 'result') Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'result') Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$DataImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl({@JsonKey(name: 'result') required this.result});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final Result result;

  @override
  String toString() {
    return 'Data(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data({@JsonKey(name: 'result') required final Result result}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'employee_id')
  String get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_shift_id')
  int get targetShiftId => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_shift_id')
  int get currentShiftId => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_date')
  String get targetDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') String employeeId,
      @JsonKey(name: 'target_shift_id') int targetShiftId,
      @JsonKey(name: 'current_shift_id') int currentShiftId,
      @JsonKey(name: 'target_date') String targetDate});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? targetShiftId = null,
    Object? currentShiftId = null,
    Object? targetDate = null,
  }) {
    return _then(_value.copyWith(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      targetShiftId: null == targetShiftId
          ? _value.targetShiftId
          : targetShiftId // ignore: cast_nullable_to_non_nullable
              as int,
      currentShiftId: null == currentShiftId
          ? _value.currentShiftId
          : currentShiftId // ignore: cast_nullable_to_non_nullable
              as int,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') String employeeId,
      @JsonKey(name: 'target_shift_id') int targetShiftId,
      @JsonKey(name: 'current_shift_id') int currentShiftId,
      @JsonKey(name: 'target_date') String targetDate});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? targetShiftId = null,
    Object? currentShiftId = null,
    Object? targetDate = null,
  }) {
    return _then(_$ResultImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      targetShiftId: null == targetShiftId
          ? _value.targetShiftId
          : targetShiftId // ignore: cast_nullable_to_non_nullable
              as int,
      currentShiftId: null == currentShiftId
          ? _value.currentShiftId
          : currentShiftId // ignore: cast_nullable_to_non_nullable
              as int,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  _$ResultImpl(
      {@JsonKey(name: 'employee_id') required this.employeeId,
      @JsonKey(name: 'target_shift_id') required this.targetShiftId,
      @JsonKey(name: 'current_shift_id') required this.currentShiftId,
      @JsonKey(name: 'target_date') required this.targetDate});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey(name: 'employee_id')
  final String employeeId;
  @override
  @JsonKey(name: 'target_shift_id')
  final int targetShiftId;
  @override
  @JsonKey(name: 'current_shift_id')
  final int currentShiftId;
  @override
  @JsonKey(name: 'target_date')
  final String targetDate;

  @override
  String toString() {
    return 'Result(employeeId: $employeeId, targetShiftId: $targetShiftId, currentShiftId: $currentShiftId, targetDate: $targetDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.targetShiftId, targetShiftId) ||
                other.targetShiftId == targetShiftId) &&
            (identical(other.currentShiftId, currentShiftId) ||
                other.currentShiftId == currentShiftId) &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, employeeId, targetShiftId, currentShiftId, targetDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  factory _Result(
          {@JsonKey(name: 'employee_id') required final String employeeId,
          @JsonKey(name: 'target_shift_id') required final int targetShiftId,
          @JsonKey(name: 'current_shift_id') required final int currentShiftId,
          @JsonKey(name: 'target_date') required final String targetDate}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: 'employee_id')
  String get employeeId;
  @override
  @JsonKey(name: 'target_shift_id')
  int get targetShiftId;
  @override
  @JsonKey(name: 'current_shift_id')
  int get currentShiftId;
  @override
  @JsonKey(name: 'target_date')
  String get targetDate;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
