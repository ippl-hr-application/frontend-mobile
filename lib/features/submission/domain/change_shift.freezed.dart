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
  String get currentShift => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_shift_id')
  String get targetShift => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'current_shift_id') String currentShift,
      @JsonKey(name: 'target_shift_id') String targetShift});
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
              as String,
      targetShift: null == targetShift
          ? _value.targetShift
          : targetShift // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: 'current_shift_id') String currentShift,
      @JsonKey(name: 'target_shift_id') String targetShift});
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
              as String,
      targetShift: null == targetShift
          ? _value.targetShift
          : targetShift // ignore: cast_nullable_to_non_nullable
              as String,
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
  final String currentShift;
  @override
  @JsonKey(name: 'target_shift_id')
  final String targetShift;

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
      @JsonKey(name: 'current_shift_id') required final String currentShift,
      @JsonKey(name: 'target_shift_id')
      required final String targetShift}) = _$ChangeShiftRequestImpl;

  factory _ChangeShiftRequest.fromJson(Map<String, dynamic> json) =
      _$ChangeShiftRequestImpl.fromJson;

  @override
  @JsonKey(name: 'target_date')
  String get targetDate;
  @override
  @JsonKey(name: 'current_shift_id')
  String get currentShift;
  @override
  @JsonKey(name: 'target_shift_id')
  String get targetShift;
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
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ShiftData? get data => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ShiftData? data});

  $ShiftDataCopyWith<$Res>? get data;
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
              as ShiftData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShiftDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ShiftDataCopyWith<$Res>(_value.data!, (value) {
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
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ShiftData? data});

  @override
  $ShiftDataCopyWith<$Res>? get data;
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
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChangeShiftResponseImpl(
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
              as ShiftData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeShiftResponseImpl implements _ChangeShiftResponse {
  _$ChangeShiftResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$ChangeShiftResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeShiftResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final ShiftData? data;

  @override
  String toString() {
    return 'ChangeShiftResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeShiftResponseImpl &&
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
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final ShiftData? data}) =
      _$ChangeShiftResponseImpl;

  factory _ChangeShiftResponse.fromJson(Map<String, dynamic> json) =
      _$ChangeShiftResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  ShiftData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChangeShiftResponseImplCopyWith<_$ChangeShiftResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftData _$ShiftDataFromJson(Map<String, dynamic> json) {
  return _ShiftData.fromJson(json);
}

/// @nodoc
mixin _$ShiftData {
  @JsonKey(name: 'target_date')
  String get targetDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_shift_id')
  String get currentShift => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_shift_id')
  String get targetShift => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftDataCopyWith<ShiftData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftDataCopyWith<$Res> {
  factory $ShiftDataCopyWith(ShiftData value, $Res Function(ShiftData) then) =
      _$ShiftDataCopyWithImpl<$Res, ShiftData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'target_date') String targetDate,
      @JsonKey(name: 'current_shift_id') String currentShift,
      @JsonKey(name: 'target_shift_id') String targetShift,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$ShiftDataCopyWithImpl<$Res, $Val extends ShiftData>
    implements $ShiftDataCopyWith<$Res> {
  _$ShiftDataCopyWithImpl(this._value, this._then);

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
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as String,
      currentShift: null == currentShift
          ? _value.currentShift
          : currentShift // ignore: cast_nullable_to_non_nullable
              as String,
      targetShift: null == targetShift
          ? _value.targetShift
          : targetShift // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiftDataImplCopyWith<$Res>
    implements $ShiftDataCopyWith<$Res> {
  factory _$$ShiftDataImplCopyWith(
          _$ShiftDataImpl value, $Res Function(_$ShiftDataImpl) then) =
      __$$ShiftDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'target_date') String targetDate,
      @JsonKey(name: 'current_shift_id') String currentShift,
      @JsonKey(name: 'target_shift_id') String targetShift,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$ShiftDataImplCopyWithImpl<$Res>
    extends _$ShiftDataCopyWithImpl<$Res, _$ShiftDataImpl>
    implements _$$ShiftDataImplCopyWith<$Res> {
  __$$ShiftDataImplCopyWithImpl(
      _$ShiftDataImpl _value, $Res Function(_$ShiftDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetDate = null,
    Object? currentShift = null,
    Object? targetShift = null,
    Object? type = null,
  }) {
    return _then(_$ShiftDataImpl(
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as String,
      currentShift: null == currentShift
          ? _value.currentShift
          : currentShift // ignore: cast_nullable_to_non_nullable
              as String,
      targetShift: null == targetShift
          ? _value.targetShift
          : targetShift // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftDataImpl implements _ShiftData {
  _$ShiftDataImpl(
      {@JsonKey(name: 'target_date') required this.targetDate,
      @JsonKey(name: 'current_shift_id') required this.currentShift,
      @JsonKey(name: 'target_shift_id') required this.targetShift,
      @JsonKey(name: 'type') required this.type});

  factory _$ShiftDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftDataImplFromJson(json);

  @override
  @JsonKey(name: 'target_date')
  final String targetDate;
  @override
  @JsonKey(name: 'current_shift_id')
  final String currentShift;
  @override
  @JsonKey(name: 'target_shift_id')
  final String targetShift;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'ShiftData(targetDate: $targetDate, currentShift: $currentShift, targetShift: $targetShift, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftDataImpl &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate) &&
            (identical(other.currentShift, currentShift) ||
                other.currentShift == currentShift) &&
            (identical(other.targetShift, targetShift) ||
                other.targetShift == targetShift) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, targetDate, currentShift, targetShift, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftDataImplCopyWith<_$ShiftDataImpl> get copyWith =>
      __$$ShiftDataImplCopyWithImpl<_$ShiftDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftDataImplToJson(
      this,
    );
  }
}

abstract class _ShiftData implements ShiftData {
  factory _ShiftData(
      {@JsonKey(name: 'target_date') required final String targetDate,
      @JsonKey(name: 'current_shift_id') required final String currentShift,
      @JsonKey(name: 'target_shift_id') required final String targetShift,
      @JsonKey(name: 'type') required final String type}) = _$ShiftDataImpl;

  factory _ShiftData.fromJson(Map<String, dynamic> json) =
      _$ShiftDataImpl.fromJson;

  @override
  @JsonKey(name: 'target_date')
  String get targetDate;
  @override
  @JsonKey(name: 'current_shift_id')
  String get currentShift;
  @override
  @JsonKey(name: 'target_shift_id')
  String get targetShift;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$ShiftDataImplCopyWith<_$ShiftDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
