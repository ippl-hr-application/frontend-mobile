// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubmissionHistory _$SubmissionHistoryFromJson(Map<String, dynamic> json) {
  return _SubmissionHistory.fromJson(json);
}

/// @nodoc
mixin _$SubmissionHistory {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<SubmissionData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionHistoryCopyWith<SubmissionHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionHistoryCopyWith<$Res> {
  factory $SubmissionHistoryCopyWith(
          SubmissionHistory value, $Res Function(SubmissionHistory) then) =
      _$SubmissionHistoryCopyWithImpl<$Res, SubmissionHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SubmissionData>? data});
}

/// @nodoc
class _$SubmissionHistoryCopyWithImpl<$Res, $Val extends SubmissionHistory>
    implements $SubmissionHistoryCopyWith<$Res> {
  _$SubmissionHistoryCopyWithImpl(this._value, this._then);

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
              as List<SubmissionData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionHistoryImplCopyWith<$Res>
    implements $SubmissionHistoryCopyWith<$Res> {
  factory _$$SubmissionHistoryImplCopyWith(_$SubmissionHistoryImpl value,
          $Res Function(_$SubmissionHistoryImpl) then) =
      __$$SubmissionHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SubmissionData>? data});
}

/// @nodoc
class __$$SubmissionHistoryImplCopyWithImpl<$Res>
    extends _$SubmissionHistoryCopyWithImpl<$Res, _$SubmissionHistoryImpl>
    implements _$$SubmissionHistoryImplCopyWith<$Res> {
  __$$SubmissionHistoryImplCopyWithImpl(_$SubmissionHistoryImpl _value,
      $Res Function(_$SubmissionHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SubmissionHistoryImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubmissionData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionHistoryImpl implements _SubmissionHistory {
  _$SubmissionHistoryImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<SubmissionData>? data})
      : _data = data;

  factory _$SubmissionHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionHistoryImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<SubmissionData>? _data;
  @override
  @JsonKey(name: 'data')
  List<SubmissionData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubmissionHistory(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionHistoryImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionHistoryImplCopyWith<_$SubmissionHistoryImpl> get copyWith =>
      __$$SubmissionHistoryImplCopyWithImpl<_$SubmissionHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionHistoryImplToJson(
      this,
    );
  }
}

abstract class _SubmissionHistory implements SubmissionHistory {
  factory _SubmissionHistory(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<SubmissionData>? data}) =
      _$SubmissionHistoryImpl;

  factory _SubmissionHistory.fromJson(Map<String, dynamic> json) =
      _$SubmissionHistoryImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<SubmissionData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionHistoryImplCopyWith<_$SubmissionHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubmissionData _$SubmissionDataFromJson(Map<String, dynamic> json) {
  return _SubmissionData.fromJson(json);
}

/// @nodoc
mixin _$SubmissionData {
  @JsonKey(name: 'submission_id')
  int? get submission_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_date')
  String? get submission_date => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionDataCopyWith<SubmissionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionDataCopyWith<$Res> {
  factory $SubmissionDataCopyWith(
          SubmissionData value, $Res Function(SubmissionData) then) =
      _$SubmissionDataCopyWithImpl<$Res, SubmissionData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'submission_id') int? submission_id,
      @JsonKey(name: 'submission_date') String? submission_date,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class _$SubmissionDataCopyWithImpl<$Res, $Val extends SubmissionData>
    implements $SubmissionDataCopyWith<$Res> {
  _$SubmissionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submission_id = freezed,
    Object? submission_date = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      submission_id: freezed == submission_id
          ? _value.submission_id
          : submission_id // ignore: cast_nullable_to_non_nullable
              as int?,
      submission_date: freezed == submission_date
          ? _value.submission_date
          : submission_date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionDataImplCopyWith<$Res>
    implements $SubmissionDataCopyWith<$Res> {
  factory _$$SubmissionDataImplCopyWith(_$SubmissionDataImpl value,
          $Res Function(_$SubmissionDataImpl) then) =
      __$$SubmissionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'submission_id') int? submission_id,
      @JsonKey(name: 'submission_date') String? submission_date,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class __$$SubmissionDataImplCopyWithImpl<$Res>
    extends _$SubmissionDataCopyWithImpl<$Res, _$SubmissionDataImpl>
    implements _$$SubmissionDataImplCopyWith<$Res> {
  __$$SubmissionDataImplCopyWithImpl(
      _$SubmissionDataImpl _value, $Res Function(_$SubmissionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submission_id = freezed,
    Object? submission_date = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_$SubmissionDataImpl(
      submission_id: freezed == submission_id
          ? _value.submission_id
          : submission_id // ignore: cast_nullable_to_non_nullable
              as int?,
      submission_date: freezed == submission_date
          ? _value.submission_date
          : submission_date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionDataImpl implements _SubmissionData {
  _$SubmissionDataImpl(
      {@JsonKey(name: 'submission_id') this.submission_id,
      @JsonKey(name: 'submission_date') this.submission_date,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'type') this.type});

  factory _$SubmissionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionDataImplFromJson(json);

  @override
  @JsonKey(name: 'submission_id')
  final int? submission_id;
  @override
  @JsonKey(name: 'submission_date')
  final String? submission_date;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  String toString() {
    return 'SubmissionData(submission_id: $submission_id, submission_date: $submission_date, status: $status, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionDataImpl &&
            (identical(other.submission_id, submission_id) ||
                other.submission_id == submission_id) &&
            (identical(other.submission_date, submission_date) ||
                other.submission_date == submission_date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, submission_id, submission_date, status, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionDataImplCopyWith<_$SubmissionDataImpl> get copyWith =>
      __$$SubmissionDataImplCopyWithImpl<_$SubmissionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionDataImplToJson(
      this,
    );
  }
}

abstract class _SubmissionData implements SubmissionData {
  factory _SubmissionData(
      {@JsonKey(name: 'submission_id') final int? submission_id,
      @JsonKey(name: 'submission_date') final String? submission_date,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'type') final String? type}) = _$SubmissionDataImpl;

  factory _SubmissionData.fromJson(Map<String, dynamic> json) =
      _$SubmissionDataImpl.fromJson;

  @override
  @JsonKey(name: 'submission_id')
  int? get submission_id;
  @override
  @JsonKey(name: 'submission_date')
  String? get submission_date;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionDataImplCopyWith<_$SubmissionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
