// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attandance_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttandanceRequest _$AttandanceRequestFromJson(Map<String, dynamic> json) {
  return _AttandanceRequest.fromJson(json);
}

/// @nodoc
mixin _$AttandanceRequest {
  @JsonKey(name: 'attendance_id')
  int get attendanceId => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String get reason => throw _privateConstructorUsedError;
  @FileConverter()
  @JsonKey(name: 'attendance_submission_file')
  File get attendanceSubmissionFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttandanceRequestCopyWith<AttandanceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttandanceRequestCopyWith<$Res> {
  factory $AttandanceRequestCopyWith(
          AttandanceRequest value, $Res Function(AttandanceRequest) then) =
      _$AttandanceRequestCopyWithImpl<$Res, AttandanceRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int attendanceId,
      @JsonKey(name: "reason") String reason,
      @FileConverter()
      @JsonKey(name: 'attendance_submission_file')
      File attendanceSubmissionFile});
}

/// @nodoc
class _$AttandanceRequestCopyWithImpl<$Res, $Val extends AttandanceRequest>
    implements $AttandanceRequestCopyWith<$Res> {
  _$AttandanceRequestCopyWithImpl(this._value, this._then);

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
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      attendanceSubmissionFile: null == attendanceSubmissionFile
          ? _value.attendanceSubmissionFile
          : attendanceSubmissionFile // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttandanceRequestImplCopyWith<$Res>
    implements $AttandanceRequestCopyWith<$Res> {
  factory _$$AttandanceRequestImplCopyWith(_$AttandanceRequestImpl value,
          $Res Function(_$AttandanceRequestImpl) then) =
      __$$AttandanceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int attendanceId,
      @JsonKey(name: "reason") String reason,
      @FileConverter()
      @JsonKey(name: 'attendance_submission_file')
      File attendanceSubmissionFile});
}

/// @nodoc
class __$$AttandanceRequestImplCopyWithImpl<$Res>
    extends _$AttandanceRequestCopyWithImpl<$Res, _$AttandanceRequestImpl>
    implements _$$AttandanceRequestImplCopyWith<$Res> {
  __$$AttandanceRequestImplCopyWithImpl(_$AttandanceRequestImpl _value,
      $Res Function(_$AttandanceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
    Object? reason = null,
    Object? attendanceSubmissionFile = null,
  }) {
    return _then(_$AttandanceRequestImpl(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      attendanceSubmissionFile: null == attendanceSubmissionFile
          ? _value.attendanceSubmissionFile
          : attendanceSubmissionFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttandanceRequestImpl implements _AttandanceRequest {
  _$AttandanceRequestImpl(
      {@JsonKey(name: 'attendance_id') required this.attendanceId,
      @JsonKey(name: "reason") required this.reason,
      @FileConverter()
      @JsonKey(name: 'attendance_submission_file')
      required this.attendanceSubmissionFile});

  factory _$AttandanceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttandanceRequestImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final int attendanceId;
  @override
  @JsonKey(name: "reason")
  final String reason;
  @override
  @FileConverter()
  @JsonKey(name: 'attendance_submission_file')
  final File attendanceSubmissionFile;

  @override
  String toString() {
    return 'AttandanceRequest(attendanceId: $attendanceId, reason: $reason, attendanceSubmissionFile: $attendanceSubmissionFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttandanceRequestImpl &&
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
  _$$AttandanceRequestImplCopyWith<_$AttandanceRequestImpl> get copyWith =>
      __$$AttandanceRequestImplCopyWithImpl<_$AttandanceRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttandanceRequestImplToJson(
      this,
    );
  }
}

abstract class _AttandanceRequest implements AttandanceRequest {
  factory _AttandanceRequest(
      {@JsonKey(name: 'attendance_id') required final int attendanceId,
      @JsonKey(name: "reason") required final String reason,
      @FileConverter()
      @JsonKey(name: 'attendance_submission_file')
      required final File attendanceSubmissionFile}) = _$AttandanceRequestImpl;

  factory _AttandanceRequest.fromJson(Map<String, dynamic> json) =
      _$AttandanceRequestImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  int get attendanceId;
  @override
  @JsonKey(name: "reason")
  String get reason;
  @override
  @FileConverter()
  @JsonKey(name: 'attendance_submission_file')
  File get attendanceSubmissionFile;
  @override
  @JsonKey(ignore: true)
  _$$AttandanceRequestImplCopyWith<_$AttandanceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttandanceRequestResponse _$AttandanceRequestResponseFromJson(
    Map<String, dynamic> json) {
  return _AttandanceRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$AttandanceRequestResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttandanceRequestResponseCopyWith<AttandanceRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttandanceRequestResponseCopyWith<$Res> {
  factory $AttandanceRequestResponseCopyWith(AttandanceRequestResponse value,
          $Res Function(AttandanceRequestResponse) then) =
      _$AttandanceRequestResponseCopyWithImpl<$Res, AttandanceRequestResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$AttandanceRequestResponseCopyWithImpl<$Res,
        $Val extends AttandanceRequestResponse>
    implements $AttandanceRequestResponseCopyWith<$Res> {
  _$AttandanceRequestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttandanceRequestResponseImplCopyWith<$Res>
    implements $AttandanceRequestResponseCopyWith<$Res> {
  factory _$$AttandanceRequestResponseImplCopyWith(
          _$AttandanceRequestResponseImpl value,
          $Res Function(_$AttandanceRequestResponseImpl) then) =
      __$$AttandanceRequestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$AttandanceRequestResponseImplCopyWithImpl<$Res>
    extends _$AttandanceRequestResponseCopyWithImpl<$Res,
        _$AttandanceRequestResponseImpl>
    implements _$$AttandanceRequestResponseImplCopyWith<$Res> {
  __$$AttandanceRequestResponseImplCopyWithImpl(
      _$AttandanceRequestResponseImpl _value,
      $Res Function(_$AttandanceRequestResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AttandanceRequestResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttandanceRequestResponseImpl implements _AttandanceRequestResponse {
  _$AttandanceRequestResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message});

  factory _$AttandanceRequestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttandanceRequestResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AttandanceRequestResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttandanceRequestResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttandanceRequestResponseImplCopyWith<_$AttandanceRequestResponseImpl>
      get copyWith => __$$AttandanceRequestResponseImplCopyWithImpl<
          _$AttandanceRequestResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttandanceRequestResponseImplToJson(
      this,
    );
  }
}

abstract class _AttandanceRequestResponse implements AttandanceRequestResponse {
  factory _AttandanceRequestResponse(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message}) =
      _$AttandanceRequestResponseImpl;

  factory _AttandanceRequestResponse.fromJson(Map<String, dynamic> json) =
      _$AttandanceRequestResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AttandanceRequestResponseImplCopyWith<_$AttandanceRequestResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
