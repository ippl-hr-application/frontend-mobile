// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attandance_submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttandanceHistoryRequest _$AttandanceHistoryRequestFromJson(
    Map<String, dynamic> json) {
  return _AttandanceHistoryRequest.fromJson(json);
}

/// @nodoc
mixin _$AttandanceHistoryRequest {
  @JsonKey(name: 'attendance_id')
  String get attendanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_submission_file')
  String get attendanceSubmissionFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttandanceHistoryRequestCopyWith<AttandanceHistoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttandanceHistoryRequestCopyWith<$Res> {
  factory $AttandanceHistoryRequestCopyWith(AttandanceHistoryRequest value,
          $Res Function(AttandanceHistoryRequest) then) =
      _$AttandanceHistoryRequestCopyWithImpl<$Res, AttandanceHistoryRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') String attendanceId,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'attendance_submission_file')
      String attendanceSubmissionFile});
}

/// @nodoc
class _$AttandanceHistoryRequestCopyWithImpl<$Res,
        $Val extends AttandanceHistoryRequest>
    implements $AttandanceHistoryRequestCopyWith<$Res> {
  _$AttandanceHistoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
    Object? reason = null,
    Object? attendanceSubmissionFile = null,
  }) {
    return _then(_value.copyWith(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      attendanceSubmissionFile: null == attendanceSubmissionFile
          ? _value.attendanceSubmissionFile
          : attendanceSubmissionFile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttandanceHistoryRequestImplCopyWith<$Res>
    implements $AttandanceHistoryRequestCopyWith<$Res> {
  factory _$$AttandanceHistoryRequestImplCopyWith(
          _$AttandanceHistoryRequestImpl value,
          $Res Function(_$AttandanceHistoryRequestImpl) then) =
      __$$AttandanceHistoryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') String attendanceId,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'attendance_submission_file')
      String attendanceSubmissionFile});
}

/// @nodoc
class __$$AttandanceHistoryRequestImplCopyWithImpl<$Res>
    extends _$AttandanceHistoryRequestCopyWithImpl<$Res,
        _$AttandanceHistoryRequestImpl>
    implements _$$AttandanceHistoryRequestImplCopyWith<$Res> {
  __$$AttandanceHistoryRequestImplCopyWithImpl(
      _$AttandanceHistoryRequestImpl _value,
      $Res Function(_$AttandanceHistoryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
    Object? reason = null,
    Object? attendanceSubmissionFile = null,
  }) {
    return _then(_$AttandanceHistoryRequestImpl(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      attendanceSubmissionFile: null == attendanceSubmissionFile
          ? _value.attendanceSubmissionFile
          : attendanceSubmissionFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttandanceHistoryRequestImpl implements _AttandanceHistoryRequest {
  _$AttandanceHistoryRequestImpl(
      {@JsonKey(name: 'attendance_id') required this.attendanceId,
      @JsonKey(name: 'reason') required this.reason,
      @JsonKey(name: 'attendance_submission_file')
      required this.attendanceSubmissionFile});

  factory _$AttandanceHistoryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttandanceHistoryRequestImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final String attendanceId;
  @override
  @JsonKey(name: 'reason')
  final String reason;
  @override
  @JsonKey(name: 'attendance_submission_file')
  final String attendanceSubmissionFile;

  @override
  String toString() {
    return 'AttandanceHistoryRequest(attendanceId: $attendanceId, reason: $reason, attendanceSubmissionFile: $attendanceSubmissionFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttandanceHistoryRequestImpl &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(
                    other.attendanceSubmissionFile, attendanceSubmissionFile) ||
                other.attendanceSubmissionFile == attendanceSubmissionFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attendanceId, reason, attendanceSubmissionFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttandanceHistoryRequestImplCopyWith<_$AttandanceHistoryRequestImpl>
      get copyWith => __$$AttandanceHistoryRequestImplCopyWithImpl<
          _$AttandanceHistoryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttandanceHistoryRequestImplToJson(
      this,
    );
  }
}

abstract class _AttandanceHistoryRequest implements AttandanceHistoryRequest {
  factory _AttandanceHistoryRequest(
          {@JsonKey(name: 'attendance_id') required final String attendanceId,
          @JsonKey(name: 'reason') required final String reason,
          @JsonKey(name: 'attendance_submission_file')
          required final String attendanceSubmissionFile}) =
      _$AttandanceHistoryRequestImpl;

  factory _AttandanceHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$AttandanceHistoryRequestImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  String get attendanceId;
  @override
  @JsonKey(name: 'reason')
  String get reason;
  @override
  @JsonKey(name: 'attendance_submission_file')
  String get attendanceSubmissionFile;
  @override
  @JsonKey(ignore: true)
  _$$AttandanceHistoryRequestImplCopyWith<_$AttandanceHistoryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttandanceHistoryData _$AttandanceHistoryDataFromJson(
    Map<String, dynamic> json) {
  return _AttandanceHistoryData.fromJson(json);
}

/// @nodoc
mixin _$AttandanceHistoryData {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttandanceHistoryDataCopyWith<AttandanceHistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttandanceHistoryDataCopyWith<$Res> {
  factory $AttandanceHistoryDataCopyWith(AttandanceHistoryData value,
          $Res Function(AttandanceHistoryData) then) =
      _$AttandanceHistoryDataCopyWithImpl<$Res, AttandanceHistoryData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') String? data});
}

/// @nodoc
class _$AttandanceHistoryDataCopyWithImpl<$Res,
        $Val extends AttandanceHistoryData>
    implements $AttandanceHistoryDataCopyWith<$Res> {
  _$AttandanceHistoryDataCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttandanceHistoryDataImplCopyWith<$Res>
    implements $AttandanceHistoryDataCopyWith<$Res> {
  factory _$$AttandanceHistoryDataImplCopyWith(
          _$AttandanceHistoryDataImpl value,
          $Res Function(_$AttandanceHistoryDataImpl) then) =
      __$$AttandanceHistoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') String? data});
}

/// @nodoc
class __$$AttandanceHistoryDataImplCopyWithImpl<$Res>
    extends _$AttandanceHistoryDataCopyWithImpl<$Res,
        _$AttandanceHistoryDataImpl>
    implements _$$AttandanceHistoryDataImplCopyWith<$Res> {
  __$$AttandanceHistoryDataImplCopyWithImpl(_$AttandanceHistoryDataImpl _value,
      $Res Function(_$AttandanceHistoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AttandanceHistoryDataImpl(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttandanceHistoryDataImpl implements _AttandanceHistoryData {
  _$AttandanceHistoryDataImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$AttandanceHistoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttandanceHistoryDataImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final String? data;

  @override
  String toString() {
    return 'AttandanceHistoryData(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttandanceHistoryDataImpl &&
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
  _$$AttandanceHistoryDataImplCopyWith<_$AttandanceHistoryDataImpl>
      get copyWith => __$$AttandanceHistoryDataImplCopyWithImpl<
          _$AttandanceHistoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttandanceHistoryDataImplToJson(
      this,
    );
  }
}

abstract class _AttandanceHistoryData implements AttandanceHistoryData {
  factory _AttandanceHistoryData(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final String? data}) = _$AttandanceHistoryDataImpl;

  factory _AttandanceHistoryData.fromJson(Map<String, dynamic> json) =
      _$AttandanceHistoryDataImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$AttandanceHistoryDataImplCopyWith<_$AttandanceHistoryDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
